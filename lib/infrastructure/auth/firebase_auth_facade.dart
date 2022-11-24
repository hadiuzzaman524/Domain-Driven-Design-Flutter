import 'package:dartz/dartz.dart';
import 'package:domain_driven_design/domain/auth/app_user.dart';
import 'package:domain_driven_design/domain/auth/auth_failures.dart';
import 'package:domain_driven_design/domain/auth/my_auth_facade.dart';
import 'package:domain_driven_design/domain/auth/value_objects.dart';

class FirebaseAuthFacade implements MyAuthFacade{
  @override
  Future<Option<AppUser>> getCurrentUser() {
    // TODO: implement getCurrentUser
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({required EmailAddress emailAddress, required Password password}) {
    // TODO: implement registerWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({required EmailAddress emailAddress, required Password password}) {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

}