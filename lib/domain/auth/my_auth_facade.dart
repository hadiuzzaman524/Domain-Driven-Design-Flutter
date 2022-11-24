import 'package:dartz/dartz.dart';
import 'package:domain_driven_design/domain/auth/auth_failures.dart';
import 'package:domain_driven_design/domain/auth/value_objects.dart';

import 'app_user.dart';

abstract class MyAuthFacade {
  Future<Option<AppUser>> getCurrentUser();
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password});
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password});
  Future<void> signOut();
}
