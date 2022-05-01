import 'package:flutter_modular/flutter_modular.dart';
import 'package:sourkanji_mobile/domain/auth/i_auth_repository.dart';
import 'package:sourkanji_mobile/domain/services/auth_service.dart';
import 'package:sourkanji_mobile/domain/services/local_storage_service.dart';
import 'package:sourkanji_mobile/domain/services/http_service.dart';
import 'package:sourkanji_mobile/domain/services/session_service.dart';
import 'package:sourkanji_mobile/infrastructure/auth/auth_repository.dart';
import 'package:sourkanji_mobile/presentation/about/about_module.dart';
import 'package:sourkanji_mobile/presentation/home/home_module.dart';
import 'package:sourkanji_mobile/presentation/index/index_module.dart';
import 'package:sourkanji_mobile/presentation/kanji/kanji_module.dart';
import 'package:sourkanji_mobile/presentation/signin/signin_module.dart';
import 'package:sourkanji_mobile/presentation/signup/signup_module.dart';
import 'package:sourkanji_mobile/presentation/splash/splash_module.dart';
import 'package:sourkanji_mobile/presentation/support/support_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        AsyncBind<LocalStorageService>(
          (i) => LocalStorageService().init(),
        ),
        AsyncBind<AuthService>(
          (i) => AuthService().init(),
        ),
        Bind.singleton(
          (i) => HttpService().init(),
        ),
        Bind.lazySingleton<IAuthRepository>(
          (i) => AuthRepository(
            client: i.get<HttpService>().client,
          ),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(SplashModule.path, module: SplashModule()),
        ModuleRoute(IndexModule.path, module: IndexModule()),
        ModuleRoute(IndexModule.path, module: IndexModule()),
        ModuleRoute(SignupModule.path, module: SignupModule()),
        ModuleRoute(KanjiModule.path, module: KanjiModule()),
        ModuleRoute(AboutModule.path, module: AboutModule()),
        ModuleRoute(SupportModule.path, module: SupportModule()),
        ModuleRoute(HomeModule.path, module: HomeModule()),
      ];
}
