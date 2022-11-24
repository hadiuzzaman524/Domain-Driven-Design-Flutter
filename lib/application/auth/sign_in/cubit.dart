import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:domain_driven_design/domain/auth/auth_failures.dart';
import 'package:domain_driven_design/domain/auth/value_objects.dart';

import '../../../domain/auth/my_auth_facade.dart';
import 'state.dart';

class SignInCubit extends Cubit<SignInState> {
  final MyAuthFacade myAuthFacade;

  SignInCubit({required this.myAuthFacade})
      : super(SignInState(
            emailAddress: EmailAddress(emailStr: ""),
            password: Password(passwordStr: "")));

  Future<void> registerWithEmailAndPassword() async {
    authMethod(myAuthFacade.registerWithEmailAndPassword);
  }

  Future<void> signInWithEmailAndPassword() async {
    authMethod(myAuthFacade.signInWithEmailAndPassword);
  }

  Future<void> authMethod(
      Future<Either<AuthFailure, Unit>> Function(
              {required EmailAddress emailAddress, required Password password})
          passingFunction) async {
    emit(LoadingState(
        emailAddress: state.emailAddress, password: state.password));
    try {
      await passingFunction(
          emailAddress: state.emailAddress, password: state.password);
    } catch (e) {
      emit(ErrorState(
          emailAddress: state.emailAddress,
          password: state.password,
          errorMsg: e.toString()));
    }
  }
}
