import 'package:domain_driven_design/domain/auth/value_objects.dart';

class SignInState {
  final EmailAddress emailAddress;
  final Password password;

  SignInState({required this.emailAddress, required this.password});
}

class LoadingState extends SignInState {
  LoadingState({required super.emailAddress, required super.password});
}

class LoadedState extends SignInState {
  LoadedState({required super.emailAddress, required super.password});
}

class ErrorState extends SignInState {
  final String errorMsg;

  ErrorState(
      {required super.emailAddress,
      required super.password,
      required this.errorMsg});
}
