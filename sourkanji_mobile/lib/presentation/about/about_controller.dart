import 'package:flutter_modular/flutter_modular.dart';
import 'package:sourkanji_mobile/presentation/support/support_module.dart';

class AboutController {
  void getSupport() => Modular.to.pushNamed(SupportModule.path);
  void onBack() => Modular.to.pop();
}
