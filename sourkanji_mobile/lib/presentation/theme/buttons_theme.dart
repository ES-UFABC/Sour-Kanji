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
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                    .mspAll(),
            minimumSize: const Size(10, 10).mspAll<Size>(),
            elevation: MaterialStateProperty.all<double>(0),
          ),
        );
}
