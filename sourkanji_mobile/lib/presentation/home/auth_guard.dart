import 'dart:async';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:sourkanji_mobile/domain/services/session_service.dart';
import 'package:sourkanji_mobile/presentation/signin/signin_modular.dart';

class AuthGuard extends RouteGuard {
  AuthGuard() : super(redirectTo: SigninModule.path);

  @override
  FutureOr<bool> canActivate(String path, ParallelRoute route) {
    return SessionService.to.isAuth;
  }
}
