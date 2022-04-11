import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sourkanji_mobile/domain/services/auth_service.dart';
import 'package:sourkanji_mobile/presentation/home/home_cubit.dart';
import 'package:sourkanji_mobile/presentation/theme/app_dimensions.dart';
import 'package:sourkanji_mobile/presentation/widgets/sk_base_page.dart';
import 'package:sourkanji_mobile/presentation/widgets/sk_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeCubit> {
  @override
  Widget build(BuildContext context) {
    return SkBasePage(
      body: Padding(
        padding: const EdgeInsets.all(AppDimensions.basePagePadding),
        child: Center(
          child: SkButton(
            label: "Disconectar",
            onPressed: AuthService.to.signout,
          ),
        ),
      ),
    );
  }
}
