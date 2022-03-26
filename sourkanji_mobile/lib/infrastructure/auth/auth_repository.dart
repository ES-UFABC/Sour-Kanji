import 'package:dio/dio.dart';
import 'package:sourkanji_mobile/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:sourkanji_mobile/domain/auth/i_auth_repository.dart';
import 'package:sourkanji_mobile/domain/auth/loggable.dart';
import 'package:sourkanji_mobile/infrastructure/auth/auth_paths.dart';
import 'package:sourkanji_mobile/shared/utils/app_logger.dart';

class AuthRepository implements IAuthRepository {
  AuthRepository({required Dio client}) : _client = client;
  final Dio _client;

  @override
  Future<Either<AuthFailure, LoggableAuthenticated>> signin(
      LoggableSignin loggable) async {
    try {
      final response = await _client.post<Map<String, dynamic>>(
        AuthPaths.signin,
        data: loggable.toJson(),
      );

      if (response.data == null) return left(const AuthFailure.unkown());

      return right(LoggableAuthenticated.fromJson(response.data!));
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        return left(const AuthFailure.accountAlreadyExists());
      } else {
        return left(const AuthFailure.network());
      }
    } catch (e) {
      AppLogger.e(e);
      return left(const AuthFailure.unkown());
    }
  }

  @override
  Future<Option<AuthFailure>> signup(LoggableSignup loggable) async {
    try {
      await _client.post(
        AuthPaths.signup,
        data: loggable.toJson(),
      );
      return none();
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        return some(const AuthFailure.accountAlreadyExists());
      } else {
        return some(const AuthFailure.network());
      }
    } catch (e) {
      AppLogger.e(e);
      return some(const AuthFailure.unkown());
    }
  }
}
