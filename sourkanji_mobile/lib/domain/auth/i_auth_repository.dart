import 'package:dartz/dartz.dart';
import 'package:sourkanji_mobile/domain/auth/auth_failure.dart';
import 'package:sourkanji_mobile/domain/auth/loggable.dart';

abstract class IAuthRepository {
  Future<Option<AuthFailure>> signup(LoggableSignup loggable);
  Future<Either<AuthFailure, LoggableAuthenticated>> signin(
      LoggableSignin loggable);
}
