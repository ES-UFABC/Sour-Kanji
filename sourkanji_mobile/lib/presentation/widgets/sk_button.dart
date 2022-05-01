import 'package:flutter/material.dart';
import 'package:sourkanji_mobile/presentation/theme/app_dimensions.dart';
import 'package:sourkanji_mobile/shared/extensions/build_context_ext.dart';
import 'package:sourkanji_mobile/shared/extensions/msp_extensions.dart';

import '../theme/app_colors.dart';

enum SkButtonState {
  enabled,
  disabled,
  loading,
}

class SkButton extends StatelessWidget {
  const SkButton._({
    this.isSecondary = false,
    this.isIconButton = false,
    this.icon,
    this.onPressed,
    this.label,
    this.content,
    Color? backgroundColor,
    Color? foregroundColor,
    this.trailingIcon,
    this.state = SkButtonState.enabled,
    this.width,
    this.onDisabledPressed,
    Key? key,
  })  : _backgroundColor = backgroundColor,
        _foregroundColor = foregroundColor,
        super(key: key);

  factory SkButton({
    VoidCallback? onPressed,
    VoidCallback? onDisabledPressed,
    String? label,
    Widget? content,
    IconData? trailingIcon,
    IconData? icon,
    Color? backgroundColor,
    Color? foregroundColor,
    double? width,
    SkButtonState state = SkButtonState.enabled,
  }) {
    return SkButton._(
      onPressed: onPressed,
      onDisabledPressed: onDisabledPressed,
      label: label,
      content: content,
      backgroundColor: backgroundColor ?? AppColors.primary,
      foregroundColor: foregroundColor ?? Colors.white,
      trailingIcon: trailingIcon,
      state: state,
      icon: icon,
      width: width,
    );
  }

  factory SkButton.secondary({
    VoidCallback? onPressed,
    VoidCallback? onDisabledPressed,
    String? label,
    Widget? content,
    IconData? trailingIcon,
    IconData? icon,
    SkButtonState state = SkButtonState.enabled,
    double? width,
  }) {
    return SkButton._(
      onPressed: onPressed,
      onDisabledPressed: onDisabledPressed,
      label: label,
      content: content,
      backgroundColor: AppColors.scaffoldBackgroundColor,
      foregroundColor: AppColors.primary,
      trailingIcon: trailingIcon,
      state: state,
      width: width,
      isSecondary: true,
      icon: icon,
    );
  }

  factory SkButton.icon({
    VoidCallback? onPressed,
    VoidCallback? onDisabledPressed,
    IconData? icon,
    SkButtonState state = SkButtonState.enabled,
    bool isSecondary = false,
    Color? backgroundColor,
    Color? foregroundColor,
  }) {
    return SkButton._(
      onPressed: onPressed,
      onDisabledPressed: onDisabledPressed,
      state: state,
      width: 48,
      isSecondary: isSecondary,
      icon: icon,
      isIconButton: true,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
    );
  }

  final VoidCallback? onPressed;
  final VoidCallback? onDisabledPressed;
  final SkButtonState state;
  final String? label;
  final Color? _backgroundColor, _foregroundColor;
  final Widget? content;
  final IconData? icon, trailingIcon;
  final double? width;
  final bool isSecondary, isIconButton;

  Color? get backgroundColor {
    if (state == SkButtonState.disabled) {
      return AppColors.greyIron;
    }
    return _backgroundColor;
  }

  Color? get foregroundColor {
    if (state == SkButtonState.disabled) {
      return Colors.white;
    }
    return _foregroundColor;
  }

  Widget get buttonContent {
    if (state == SkButtonState.loading) {
      return SizedBox(
        height: 16,
        width: 16,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          valueColor: AlwaysStoppedAnimation<Color>(
            foregroundColor ?? AppColors.primary,
          ),
        ),
      );
    } else if (label != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) ...[
            Icon(
              icon,
              size: 16,
              color: foregroundColor,
            ),
            const SizedBox(width: 10),
          ],
          if (trailingIcon != null) ...[
            Expanded(
              child: Text(label!),
            ),
            const SizedBox(width: 10),
            Icon(
              trailingIcon,
              size: 16,
            ),
          ] else
            Flexible(
              child: Text(label!),
            ),
        ],
      );
    } else if (icon != null) {
      return Icon(
        icon,
        size: 16,
        color: foregroundColor,
      );
    }
    return content ?? const SizedBox();
  }

  @override
  Widget build(BuildContext context) {
    VoidCallback? _onPressed;
    if (state == SkButtonState.disabled) {
      _onPressed = onDisabledPressed;
    } else if (state == SkButtonState.enabled) {
      _onPressed = onPressed;
    }

    return SizedBox(
      width: width,
      height: isIconButton ? width : null,
      child: isSecondary
          ? OutlinedButton(
              onPressed: _onPressed,
              child: buttonContent,
              style: context.theme.outlinedButtonTheme.style?.copyWith(
                overlayColor: foregroundColor?.withOpacity(0.2).mspAll(),
                backgroundColor: backgroundColor?.mspAll(),
                foregroundColor: foregroundColor?.mspAll(),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppDimensions.mdRadius),
                  side: const BorderSide(
                    color: AppColors.primary,
                    width: 3,
                  ),
                ).mspAll(),
                padding:
                    isIconButton ? const EdgeInsets.all(14).mspAll() : null,
              ),
            )
          : ElevatedButton(
              onPressed: state != SkButtonState.disabled &&
                      state != SkButtonState.loading
                  ? _onPressed
                  : null,
              child: buttonContent,
              style: context.theme.elevatedButtonTheme.style?.copyWith(
                overlayColor: foregroundColor?.withOpacity(0.2).mspAll(),
                backgroundColor: backgroundColor?.mspAll(),
                foregroundColor: foregroundColor?.mspAll(),
                padding:
                    isIconButton ? const EdgeInsets.all(14).mspAll() : null,
              ),
            ),
    );
  }
}
