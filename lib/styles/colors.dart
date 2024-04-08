
// ignore_for_file: constant_identifier_names

part of 'styles.dart';

/// {@category Core}
class FitStitchColors {
  static const Color pu = Color(0xffFF46AA);

  static const Color Pink = Color(0xffFF46AA);
  static const Color Green = Color(0xff00DC7D);
  static const Color DarkPurple = Color(0xff5200FF);
  static const Color Purple = Color(0xff5200FF);
  static const Color Blue = Color(0xff005AFF);
  static const Color Yellow = Color(0xfffec501);
  static const Color Orange = Color(0xffFE8A00);
  static const Color Red = Color(0xffFF1F00);
  static const Color Black = Color(0xff10101e);
  static const Color White = Color(0xffFFFFFF);
  static const Color DarkGrey = Color(0xff1E2227);
  static const Color MediumGrey = Color(0xff54575B);
  static const Color LightGrey = Color(0xff85878A);
  static const Color WhiteGrey = Color(0xffd8d9dc);
  static const Color kDarkColor = Color(0x0030292f);
  static const Color kYellow = Color(0x00deb841);
  static const Color Bland = Color(0xFFe0b7a3);

  final Color kBland = HexColor.fromHex('e0b7a3');
}

/// {@category Core}
///
/// The Base Dark Theme for FloatMe. Currently this is the default theming class for the app
class MvmtDarkTheme {
  //region Identity
  static const Color brand = FitStitchColors.Orange;

  //endregion

  //region Semantic
  static const Color success = FitStitchColors.Green;

  static const Color info = FitStitchColors.Blue;

  static const Color attention = FitStitchColors.Yellow;

  static const Color danger = FitStitchColors.Red;

  //endregion

  //region Common UI
  static const Color background = FitStitchColors.Black;

  static const Color backgroundAlt = FitStitchColors.DarkGrey;

  static const Color backgroundBrand = brand;

  static final Color overlay = FitStitchColors.Black.withOpacity(0.7);

  static const Color white = FitStitchColors.White;

  static const Color altBackground = FitStitchColors.LightGrey;

  // static const Color lightWhite = MvmtColors.White;

  static const Color black = FitStitchColors.Black;

  static const Color lightMuted = FitStitchColors.MediumGrey;

  static const Color stroke = lightMuted;

  static const Color strokeAlt = backgroundAlt;

  //endregion

  //region Widget Specific
  static const Color link = brand;

  static const Color tabSelected = white;

  static const Color tabUnselected = lightMuted;

  static const Color active = brand;

  static const Color inactive = lightMuted;
//endregion
}

ThemeData getThemeData() {
  return ThemeData(
    dialogBackgroundColor: MvmtDarkTheme.backgroundAlt,
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.light, //
        surfaceTintColor: Colors.transparent
      // 2
    ),
    brightness: Brightness.dark,
    splashColor: FitStitchColors.Yellow,
buttonBarTheme: ButtonBarThemeData(),
    canvasColor: MvmtDarkTheme.background,
    primaryColor: MvmtDarkTheme.brand,
    textTheme: TextTheme(
      titleLarge: TextStyle(
        color: HexColor.fromHex('#333333'),
        fontFamily: 'SpaceMono',
      ),
      headlineSmall: TextStyle(
        color: HexColor.fromHex('#333333'),
        fontFamily: 'SpaceMono',
      ),
      bodyLarge: TextStyle(
        color: HexColor.fromHex('#333333'),
        fontFamily: 'SpaceMono',
      ),
      labelLarge: TextStyle(
        color: HexColor.fromHex('#333333'),
        fontFamily: 'SpaceMono',
      ),
    ),
  );
}
