import 'package:dartz/dartz.dart';

import 'failures.dart';

abstract class ValueObject<T>{
  Either<ValueFailures<String>, String> get value;

  @override
  String toString() {
    return 'ValueObject{}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ValueObject && runtimeType == other.runtimeType;

  @override
  int get hashCode => 0;
}