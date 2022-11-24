import 'package:dartz/dartz.dart';
import 'package:domain_driven_design/domain/auth/app_user.dart';
import 'package:domain_driven_design/domain/auth/auth_failures.dart';
import 'package:domain_driven_design/domain/auth/my_auth_facade.dart';
import 'package:domain_driven_design/domain/auth/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';

class FirebaseAuthFacade implements MyAuthFacade {
  final FirebaseAuth firebaseAuth;

  FirebaseAuthFacade(this.firebaseAuth);

  @override
  Future<Option<AppUser>> getCurrentUser() {
    // TODO: implement getCurrentUser
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    try {
      final String emailStr = emailAddress.getSuccessOrCrush();
      final String passwordStr = password.getSuccessOrCrush();

      await firebaseAuth.createUserWithEmailAndPassword(
          email: emailStr, password: passwordStr);
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == "ERROR_EMAIL_ALREADY_IN_USE") {
        return left(const AuthFailure.emailAlreadyUsed());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }
}
