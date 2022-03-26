library app_theme;

import 'package:sourkanji_mobile/shared/extensions/msp_extensions.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

part 'buttons_theme.dart';
part 'text_theme.dart';
part 'icon_theme.dart';
part 'app_bar_theme.dart';
part 'input_theme.dart';
part 'progress_indicator_theme.dart';

class AppTheme {
  static ThemeData? _theme;

  static ThemeData get dark {
    _theme ??= ThemeData(
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
      appBarTheme: const _AppBarTheme(),
      textTheme: const _TextTheme(),
      iconTheme: const _IconTheme(),
      progressIndicatorTheme: const _ProgressIndicatorTheme(),
      inputDecorationTheme: _InputTheme(),
      // sliderTheme: _SliderTheme(),
      elevatedButtonTheme: _ElevatedButtonThemeData(),
    );
    return _theme!;
  }
}
