import 'package:dartz/dartz.dart';
import 'package:domain_driven_design/domain/core/error.dart';

import 'failures.dart';

abstract class ValueObject<T> {
  Either<ValueFailures<T>, T> get value;

  const ValueObject();

  T getSuccessOrCrush() {
    return value.fold((l) => throw UnExpectedError(l), (r) => r);
  }

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
