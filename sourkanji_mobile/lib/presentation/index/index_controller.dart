import 'package:flutter_modular/flutter_modular.dart';
import 'package:sourkanji_mobile/presentation/kanji/kanji_module.dart';
import 'package:sourkanji_mobile/presentation/about/about_module.dart';
import 'package:sourkanji_mobile/presentation/signin/signin_module.dart';
import 'package:sourkanji_mobile/presentation/signup/signup_module.dart';

class IndexControler {
  void getStarted() => Modular.to.pushNamed(SignupModule.path);
  void login() => Modular.to.pushNamed(SigninModule.path);
  void kanji() => Modular.to.pushNamed(KanjiModule.path);
  void about() => Modular.to.pushNamed(AboutModule.path);
}
