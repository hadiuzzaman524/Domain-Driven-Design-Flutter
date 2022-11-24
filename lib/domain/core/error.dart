import 'failures.dart';

class UnExpectedError extends Error {
  final ValueFailures valueFailure;

  UnExpectedError(this.valueFailure);

  @override
  String toString() {
    return Error.safeToString(
        'UnexpectedValueError{valueFailure: $valueFailure}');
  }
}
