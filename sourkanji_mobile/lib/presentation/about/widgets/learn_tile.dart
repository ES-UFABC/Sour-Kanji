import 'package:flutter/material.dart';
import 'package:sourkanji_mobile/presentation/theme/app_dimensions.dart';
import 'package:sourkanji_mobile/shared/extensions/build_context_ext.dart';

class LearnTile extends StatelessWidget {
  const LearnTile.radicals({
    Key? key,
  })  : label = "Radicals",
        description =
            "Spaced Repetion System to help you learn all the kanji radicals",
        iconPath = "sapling.png",
        super(key: key);
  const LearnTile.kanjis({
    Key? key,
  })  : label = "Kanjis",
        description =
            "Spaced Repetion System to help you learn all the kanji radicals",
        iconPath = "flower_icon.png",
        super(key: key);
  const LearnTile.vocabulary({
    Key? key,
  })  : label = "Vocabulary",
        description =
            "Spaced Repetion System to help you learn all the kanji radicals",
        iconPath = "lemon_icon.png",
        super(key: key);

  final String iconPath;
  final String label;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: AppDimensions.mediumSpacing),
        Row(
          children: [
            Image.asset(
              "assets/images/$iconPath",
              height: 28,
              width: 28,
            ),
            const SizedBox(width: AppDimensions.mediumSpacing),
            Text(
              label,
              style: context.textTheme.headline4?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        const SizedBox(height: AppDimensions.tinySpacing),
        Text(description),
      ],
    );
  }
}
