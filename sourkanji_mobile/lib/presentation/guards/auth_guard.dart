import 'dart:async';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:sourkanji_mobile/domain/services/auth_service.dart';
import 'package:sourkanji_mobile/presentation/index/index_module.dart';

class AuthGuard extends RouteGuard {
  AuthGuard() : super(redirectTo: IndexModule.path);

  @override
  FutureOr<bool> canActivate(String path, ParallelRoute route) {
    return AuthService.to.isAuth;
  }
}
