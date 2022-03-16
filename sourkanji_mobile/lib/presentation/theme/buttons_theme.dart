part of app_theme;

class _ElevatedButtonThemeData extends ElevatedButtonThemeData {
  _ElevatedButtonThemeData()
      : super(
          style: ButtonStyle(
            padding: const EdgeInsets.all(8).mspAll(),
            backgroundColor: AppColors.primary.mspAll(),
            foregroundColor:
                MaterialStateProperty.all<Color>(AppColors.baseFontColor),
            textStyle: const TextStyle(
              fontSize: 14,
            ).mspAll(),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                    .mspAll(),
            minimumSize: const Size(10, 10).mspAll<Size>(),
            elevation: MaterialStateProperty.all<double>(0),
          ),
        );
}
