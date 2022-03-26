import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sourkanji_mobile/domain/auth/auth_failure.dart';
import 'package:sourkanji_mobile/domain/auth/i_auth_repository.dart';
import 'package:sourkanji_mobile/domain/auth/loggable.dart';
import 'package:sourkanji_mobile/domain/services/local_storage_service.dart';
import 'package:sourkanji_mobile/shared/utils/app_logger.dart';

class AuthService implements Disposable {
  static AuthService get to => Modular.get();
  static Future<AuthService> get toAsync => Modular.getAsync();

  LocalStorageService get _localStorage => LocalStorageService.to;
  IAuthRepository get _authRepository => Modular.get();

  bool get isAuth => _localStorage.getLoggableAuthenticated() != null;

  Future<Option<AuthFailure>> signin(LoggableSignin loggable) async {
    final result = await _authRepository.signin(loggable);
    return result.fold(
      (failure) => some(failure),
      (loggableAuth) async {
        await _localStorage.saveLoggableAuthenticated(loggableAuth);
        return none();
      },
    );
  }

  // ⎧⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎺⎫
  // ⎨ Lifecycle                                                            ⎬
  // ⎩⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎽⎭

  Future<AuthService> init() async {
    // ignore: no_runtimetype_tostring
    AppLogger.v('$runtimeType ready!');

    return this;
  }

  @override
  void dispose() {}
}
