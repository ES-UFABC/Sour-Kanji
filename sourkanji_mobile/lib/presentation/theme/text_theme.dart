part of app_theme;

class _TextTheme extends TextTheme {
  const _TextTheme()
      : super(
          overline: const TextStyle(
            color: AppColors.baseFontColor,
            fontSize: 12,
            letterSpacing: 0,
          ),
          bodyText1: const TextStyle(
            color: AppColors.baseFontColor,
            fontSize: 16,
          ),
          bodyText2: const TextStyle(
            color: AppColors.baseFontColor,
            fontSize: 16,
          ),
          caption: const TextStyle(
            color: AppColors.baseFontColor,
            fontSize: 12,
          ),
          subtitle1: const TextStyle(
            color: AppColors.baseFontColor,
            fontSize: 14,
          ),
          subtitle2: const TextStyle(
            color: AppColors.baseFontColor,
            fontSize: 14,
          ),
          headline1: const TextStyle(
            color: AppColors.baseFontColor,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          headline2: const TextStyle(
            color: AppColors.baseFontColor,
            fontSize: 28,
          ),
          headline3: const TextStyle(
            color: AppColors.baseFontColor,
            fontSize: 24,
          ),
          headline4: const TextStyle(
            color: AppColors.baseFontColor,
            fontSize: 18,
          ),
          headline5: const TextStyle(
            color: AppColors.baseFontColor,
            fontSize: 14,
          ),
          headline6: const TextStyle(
            color: AppColors.baseFontColor,
            fontSize: 12,
          ),
        );
}
