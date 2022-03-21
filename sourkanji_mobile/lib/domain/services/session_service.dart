import 'package:flutter_modular/flutter_modular.dart';
import 'package:sourkanji_mobile/shared/utils/app_logger.dart';

class SessionService implements Disposable {
  static SessionService get to => Modular.get();
  static Future<SessionService> get toAsync => Modular.getAsync();

  bool get isAuth => false;

  Future<SessionService> init() async {
    // ignore: no_runtimetype_tostring
    AppLogger.v('$runtimeType ready!');

    return this;
  }

  @override
  void dispose() {}
}
