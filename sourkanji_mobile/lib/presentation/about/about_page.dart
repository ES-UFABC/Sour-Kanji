import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sourkanji_mobile/presentation/about/about_controller.dart';
import 'package:sourkanji_mobile/presentation/about/widgets/learn_tile.dart';
import 'package:sourkanji_mobile/presentation/theme/app_dimensions.dart';
import 'package:sourkanji_mobile/presentation/widgets/sk_base_page.dart';
import 'package:sourkanji_mobile/presentation/widgets/sk_button.dart';
import 'package:sourkanji_mobile/shared/extensions/build_context_ext.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({
    Key? key,
  }) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends ModularState<AboutPage, AboutController> {
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
            Text(
              "About Us",
              style: context.textTheme.headline1,
            ),
            const SizedBox(height: AppDimensions.baseHeadlineVerticalSpacing),
            Text(
              "App to help self-paced learning using spaced repetition system,  learn 2000 kanjis from three months to two years.",
              style: context.textTheme.headline6?.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: AppDimensions.bigVerticalListSpacing),
            SkButton(
              label: "Get support",
              onPressed: controller.getSupport,
            ),
            const SizedBox(height: AppDimensions.bigVerticalListSpacing),
            Text(
              "Learn",
              style: context.textTheme.headline1,
            ),
            const LearnTile.radicals(),
            const LearnTile.kanjis(),
            const LearnTile.vocabulary(),
          ],
        ),
      ),
    );
  }
}
