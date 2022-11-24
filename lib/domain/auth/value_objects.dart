import 'package:dartz/dartz.dart';
import 'package:domain_driven_design/domain/core/failures.dart';
import 'package:domain_driven_design/domain/core/value_objects.dart';

import '../core/validators.dart';

class EmailAddress implements ValueObject<String> {
  @override
  final Either<ValueFailures<String>, String> value;

  EmailAddress._(this.value);

  factory EmailAddress({required String emailStr}) {
    return EmailAddress._(validateEmailAddress(emailStr));
  }
}

class Password implements ValueObject<String> {
  @override
  final Either<ValueFailures<String>, String> value;

  Password._(this.value);

  factory Password({required String passwordStr}) {
    return Password._(validatePassword(passwordStr));
  }
}
