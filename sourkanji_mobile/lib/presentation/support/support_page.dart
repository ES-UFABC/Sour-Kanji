import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sourkanji_mobile/presentation/support/support_controller.dart';
import 'package:sourkanji_mobile/presentation/support/widgets/support_card.dart';
import 'package:sourkanji_mobile/presentation/theme/app_dimensions.dart';
import 'package:sourkanji_mobile/presentation/widgets/sk_base_page.dart';

class SupportPage extends StatefulWidget {
  const SupportPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends ModularState<SupportPage, SupportController> {
  @override
  Widget build(BuildContext context) {
    return SkBasePage(
      showBack: true,
      onBack: controller.onBack,
      body: Padding(
        padding: const EdgeInsets.all(AppDimensions.basePagePadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SupportCard.mail(
              onPressed: () {},
            ),
            const SizedBox(height: AppDimensions.bigSpacing),
            SupportCard.patreon(
              onPressed: () {},
            ),
            const SizedBox(height: AppDimensions.bigSpacing),
            Align(
              alignment: Alignment.centerRight,
              child: Image.asset("assets/images/lemon_support.png"),
            ),
          ],
        ),
      ),
    );
  }
}
