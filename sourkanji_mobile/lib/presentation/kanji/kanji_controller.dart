import 'package:flutter_modular/flutter_modular.dart';
import 'package:sourkanji_mobile/presentation/signin/signin_module.dart';
import 'package:sourkanji_mobile/presentation/signup/signup_module.dart';

class KanjiControler {
  void getStarted() => Modular.to.pushNamed(SignupModule.path);
  void login() => Modular.to.pushNamed(SigninModule.path);
}
