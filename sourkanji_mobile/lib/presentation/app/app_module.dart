import 'package:flutter_modular/flutter_modular.dart';
import 'package:sourkanji_mobile/domain/services/hive_service.dart';
import 'package:sourkanji_mobile/domain/services/session_service.dart';
import 'package:sourkanji_mobile/presentation/home/home_module.dart';
import 'package:sourkanji_mobile/presentation/signin/signin_modular.dart';
import 'package:sourkanji_mobile/presentation/splash/splash_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        AsyncBind<HiveService>(
          (i) => HiveService().init(),
        ),
        AsyncBind<SessionService>(
          (i) => SessionService().init(),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(SplashModule.path, module: SplashModule()),
        ModuleRoute(HomeModule.path, module: HomeModule()),
        ModuleRoute(SigninModule.path, module: SigninModule()),
      ];
}
