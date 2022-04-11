import 'package:flutter/material.dart';
import 'package:sourkanji_mobile/presentation/theme/app_colors.dart';
import 'package:sourkanji_mobile/presentation/theme/app_dimensions.dart';
import 'package:sourkanji_mobile/presentation/widgets/sk_button.dart';
import 'package:sourkanji_mobile/shared/extensions/color_extensions.dart';

class SupportCard extends StatelessWidget {
  const SupportCard.mail({
    this.onPressed,
    Key? key,
  })  : iconName = "mail_icon.png",
        buttonLabel = "Mail",
        description = "Report bugs, compliments, etc, reply not garanted",
        backgroundColor = AppColors.yellowBackground,
        super(key: key);
  const SupportCard.patreon({
    this.onPressed,
    Key? key,
  })  : iconName = "consume_icon.png",
        buttonLabel = "Patreon",
        description = "Wanna a game to help you learn?",
        backgroundColor = AppColors.redBackground,
        super(key: key);

  final String iconName;
  final String buttonLabel;
  final String description;
  final Color backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: Stack(
        children: [
          Positioned(
            top: 32,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(AppDimensions.mdRadius),
                border: Border.all(
                  color: AppColors.primary,
                  width: 3,
                ),
              ),
              padding: const EdgeInsets.only(
                top: AppDimensions.basePagePadding + 8,
                left: AppDimensions.basePagePadding,
                right: AppDimensions.basePagePadding,
                bottom: 8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SkButton.secondary(
                    label: buttonLabel,
                    onPressed: onPressed,
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        description,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              "assets/images/$iconName",
              height: 64,
            ),
          ),
        ],
      ),
    );
  }
}
