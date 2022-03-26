import 'package:flutter/material.dart';
import 'package:sourkanji_mobile/presentation/theme/app_colors.dart';
import 'package:sourkanji_mobile/presentation/theme/app_dimensions.dart';
import 'package:sourkanji_mobile/presentation/widgets/sk_base_page.dart';
import 'package:sourkanji_mobile/presentation/widgets/sk_button.dart';
import 'package:sourkanji_mobile/shared/extensions/build_context_ext.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({
    Key? key,
  }) : super(key: key);

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return SkBasePage(
      body: Padding(
        padding: const EdgeInsets.all(AppDimensions.basePagePadding),
        child: Column(
          children: [
            SizedBox(height: context.ph(0.03)),
            Image.asset("assets/images/lemon_kanji.png"),
            const SizedBox(height: 20),
            Text(
              "LEARN",
              style: context.textTheme.headline2,
              textAlign: TextAlign.center,
            ),
            Text(
              '2000 KANJIS',
              style: context.textTheme.headline2,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 5),
            Text(
              'Learning kanji is a sour task, but could be a sour candy task 。。。',
              style: context.textTheme.headline6?.copyWith(
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            SkButton(
              label: "GET STARTED",
            ),
            const SizedBox(height: 20),
            SkButton(
              label: "LOGIN",
            ),
            const SizedBox(height: 20),
            SkButton(
              label: "ABOUT",
              backgroundColor: AppColors.greySourKanji,
            ),
          ],
        ),
      ),
    );
  }
}
