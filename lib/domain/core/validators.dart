import 'package:dartz/dartz.dart';

import 'failures.dart';

Either<ValueFailures<String>, String> validateEmailAddress(String emailStr){
  const emailRegex =
  r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(emailStr)) {
    return right(emailStr);
  } else {
    return left(ValueFailures.invalidEmailAddress(failedValue: emailStr));
  }
}

Either<ValueFailures<String>, String> validatePassword(String passwordStr){
  if(passwordStr.length<6){
    return left(ValueFailures.shortPassword(failedValue: passwordStr));
  }
  return right(passwordStr);
}