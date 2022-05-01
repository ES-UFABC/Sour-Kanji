part of app_theme;

class _ElevatedButtonThemeData extends ElevatedButtonThemeData {
  _ElevatedButtonThemeData()
      : super(
          style: ButtonStyle(
            padding: const EdgeInsets.all(16).mspAll(),
            backgroundColor: AppColors.primary.mspAll(),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ).mspAll(),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppDimensions.mdRadius),
            ).mspAll(),
            minimumSize: const Size(10, 10).mspAll<Size>(),
            elevation: MaterialStateProperty.all<double>(0),
          ),
        );
}

class _OutlineButtonThemeData extends OutlinedButtonThemeData {
  _OutlineButtonThemeData()
      : super(
          style: ButtonStyle(
            backgroundColor: AppColors.scaffoldBackgroundColor.mspAll(),
            padding: const EdgeInsets.symmetric(
              vertical: 14,
              horizontal: 26,
            ).mspAll(),
            foregroundColor:
                MaterialStateProperty.all<Color>(AppColors.primary),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ).mspAll(),
            overlayColor: AppColors.primary.withOpacity(0.2).mspAll(),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppDimensions.mdRadius),
              side: const BorderSide(
                color: AppColors.primary,
                width: 2,
              ),
            ).mspAll(),
            minimumSize: const Size(10, 10).mspAll<Size>(),
            elevation: MaterialStateProperty.all<double>(0),
            side: const BorderSide(color: AppColors.greyAthens).mspAll(),
          ),
        );
}
