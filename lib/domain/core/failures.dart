import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';
@freezed
class ValueFailures<T> with _$ValueFailures{
  factory ValueFailures.invalidEmailAddress({required String failedValue})= InvalidEmailAddress;
  factory ValueFailures.shortPassword({required String failedValue})= ShortPassword;
}