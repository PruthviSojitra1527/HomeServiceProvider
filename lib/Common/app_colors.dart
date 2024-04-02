import '../../../../Common/all_import.dart';

Map<int, Color> lightTheme = {
  50: const Color(0x1AFFFFFF),
  100: const Color(0x26FFFFFF),
  200: const Color(0x33FFFFFF),
  300: const Color(0x4DFFFFFF),
  400: const Color(0x66FFFFFF),
  500: const Color(0x80FFFFFF),
  600: const Color(0x99FFFFFF),
  700: const Color(0xB3FFFFFF),
  800: const Color(0xCCFFFFFF),
  900: const Color(0xE6FFFFFF),
};

class AppColors {
  MaterialColor primarySwatchColors = MaterialColor(0xFFFFFFFF, lightTheme);
  Color green = const Color(0xFF00B41C);
  Color red = const Color(0xFFFF5E5E);
  Color yellow = const Color(0xFFFFCA51);
  Color black = const Color(0xFF000000);
  Color white = const Color(0xFFFFFFFF);
  Color transparent =  Colors.transparent;

  Color darkBtnColor = const Color(0xFF11184E);
  Color btnColor = const Color(0xFF00C9FF);
  Color blurBtnColor = const Color(0xFFDBF5FF);

  // Color lightColor = const Color(0xFF2F2644);
  Color mediumGrayColor = const Color(0xFF9793A2);

  Color greyTextColor = const Color(0xFFD5D4D6);
  Color darkGreyText = const Color(0xFF717694);
  Color grey = const Color(0xFF707070);

  Color chatReceiverContainerColor = const Color(0xFFF6FAFC);
  Color chatReceiverTextColor = const Color(0xFF392F51);

  Color appDarkColor = const Color(0xFFeff9f6);
  Color appMediumColor = const Color(0xFFF9F9F9);
  Color appLightColor = const Color(0xFFFFFFFF);

  Color darkBackgroundColor = const Color(0xFF11184E);
  Color lightBackgroundColor = const Color(0xFF1B2360);

  Color iconColor = const Color(0xFF11184E);

  Color dividerColor = const Color(0xFFC3C5CF);
  Color borderColor = const Color(0xFFFFFFFF);

  Color greenOpacity = const Color(0xffCDEFCC);
  Color redText = const Color(0xffFF5E5E);
  Color redOpacity = const Color(0xffBEBAC5);

  Color greenText = const Color(0xff007C4B);
  Color yellowTextColor = const Color(0xff7A6600);
  Color darkBlueTextColor = const Color(0xFF181F52);
  Color blueTextColor = const Color(0xFF00B0DF);
  Color whiteTextColor = const Color(0xFFFFFFFF);
  Color transactionText = const Color(0xFF858B97);
}

class AppTheme {
  static const Color primaryColor = Color(0xFFDBF5FF);
  static const Color secondaryColor = Color(0xFFFFFCEE);
  static const Color mediumPrimaryColor = Color(0xFF00C9FF);
  static const Color mediumSecondaryColor = Color(0xFFFFCA51);
  static const Color darkPrimaryColor = Color(0xFF11184E);
  static const Color darkSecondaryColor = Color(0xFF00E0FF);
  static const Color white = Color(0xFFFFFFFF);
  static const Color lightPrimaryColor = Color(0xFFF6FCFF);

  static const Gradient lightGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.topRight,
    colors: [
      white,
      lightPrimaryColor,
      white,
    ],
  );


  static const Gradient primaryGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      primaryColor,
      secondaryColor,
    ],
  );

  static const Gradient mediumGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      mediumPrimaryColor,
      mediumSecondaryColor,
    ],
  );
  static const Gradient chatGradient = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      Color(0xFF00C9FF),
      Color(0xFFFFCA51),
      ],
    stops: [0.1408, 1.0],
    transform: GradientRotation(101.24 * 3.14 / 180), // Convert degrees to radians
  );

  static const Gradient darkGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      darkPrimaryColor,
      darkPrimaryColor,
      darkPrimaryColor,
      darkSecondaryColor,
    ],
  );
}
