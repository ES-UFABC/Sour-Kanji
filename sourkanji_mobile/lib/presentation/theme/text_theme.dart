part of app_theme;

const kFontFamily = 'Nunito Sans';

class _TextTheme extends TextTheme {
  const _TextTheme()
      : super(
          overline: const TextStyle(
            fontFamily: kFontFamily,
            color: AppColors.baseFontColor,
            fontSize: 16,
            letterSpacing: 0,
          ),
          bodyText1: const TextStyle(
            fontFamily: kFontFamily,
            color: AppColors.baseFontColor,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          bodyText2: const TextStyle(
            fontFamily: kFontFamily,
            color: AppColors.baseFontColor,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          caption: const TextStyle(
            fontFamily: kFontFamily,
            color: AppColors.baseFontColor,
            fontSize: 12,
          ),
          subtitle1: const TextStyle(
            fontFamily: kFontFamily,
            color: AppColors.baseFontColor,
            fontSize: 14,
          ),
          subtitle2: const TextStyle(
            fontFamily: kFontFamily,
            color: AppColors.baseFontColor,
            fontSize: 14,
          ),
          headline1: const TextStyle(
            fontFamily: kFontFamily,
            color: AppColors.baseFontColor,
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
          headline2: const TextStyle(
            fontFamily: kFontFamily,
            color: AppColors.baseFontColor,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          headline3: const TextStyle(
            fontFamily: kFontFamily,
            color: AppColors.baseFontColor,
            fontSize: 28,
          ),
          headline4: const TextStyle(
            fontFamily: kFontFamily,
            color: AppColors.baseFontColor,
            fontSize: 24,
          ),
          headline5: const TextStyle(
            fontFamily: kFontFamily,
            color: AppColors.baseFontColor,
            fontSize: 22,
          ),
          headline6: const TextStyle(
            fontFamily: kFontFamily,
            color: AppColors.baseFontColor,
            fontSize: 20,
          ),
        );
}
