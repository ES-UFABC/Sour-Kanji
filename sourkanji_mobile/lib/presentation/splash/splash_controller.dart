import 'package:flutter_modular/flutter_modular.dart';
import 'package:sourkanji_mobile/domain/services/hive_service.dart';
import 'package:sourkanji_mobile/presentation/app/app_module.dart';
import 'package:sourkanji_mobile/presentation/home/home_module.dart';

class SplashControler {
  void onInit() async {
    await Future.wait([
      Modular.isModuleReady<AppModule>(),
      Future.delayed(const Duration(seconds: 2)),
    ]);

    Modular.to.pushReplacementNamed(HomeModule.path);
  }
}
