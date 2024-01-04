
part of 'styles.dart';
final TextStyle hugeTitle = _hugeTitle();

final TextStyle largeTitle = _largeTitle();

final TextStyle title1 = _title1();

final TextStyle title2 = _title2();

final TextStyle title3 = _title3();

final TextStyle title4 = _title4();

final TextStyle whiteSectionHeader = sectionHeader();

final TextStyle whiteBoldSectionHeaderBold = sectionHeader(bold: true);

final TextStyle hugeBody = _hugeBody();

final TextStyle largeBody = _largeBody();

final TextStyle foregroundLargeBodyBold = _largeBody(bold: true);

final TextStyle body1 = _body1();

final TextStyle body1Bold = _body1Bold();

final TextStyle body2 = _body2();

final TextStyle body2Bold = _body2Bold();

final TextStyle body3 = _body3();

final TextStyle body3Bold = _body3Bold();
//endregion

// region ForegroundAlt
///
final TextStyle foregroundAltTitle3 = _title3(color: MvmtDarkTheme.altBackground);

final TextStyle foregroundAltTitle3Strikethrough =
    _title3(color: MvmtDarkTheme.altBackground, decoration: TextDecoration.lineThrough);

final TextStyle altLargeBody = _largeBody(color: MvmtDarkTheme.altBackground);

final TextStyle altLargeBodyBold = _largeBody(color: MvmtDarkTheme.altBackground, bold: true);

final TextStyle altBody2 = _body2(color: MvmtDarkTheme.altBackground);

final TextStyle altBody3 = _body3(color: MvmtDarkTheme.altBackground);

final TextStyle altBody3Bold = _body3Bold(color: MvmtDarkTheme.altBackground);

final TextStyle altHugeBody = _hugeBody(color: MvmtDarkTheme.altBackground);

final TextStyle altBody1 = _body1(color: MvmtDarkTheme.altBackground);

final TextStyle altBody1Bold = _body1Bold(color: MvmtDarkTheme.altBackground);

final TextStyle altBody2Bold = _body2Bold(color: MvmtDarkTheme.altBackground);

final TextStyle altSectionHeader = sectionHeader(color: MvmtDarkTheme.altBackground);

final TextStyle altBody4 = _body4(color: MvmtDarkTheme.altBackground);

// endregion

//region ForegroundMuted

final TextStyle foregroundMutedTitle3 = _title3(color: MvmtDarkTheme.lightMuted);

final TextStyle foregroundMutedBody1 = _body1(color: MvmtDarkTheme.lightMuted);

final TextStyle foregroundMutedBody1Bold = _body1Bold(color: MvmtDarkTheme.lightMuted);

final TextStyle foregroundMutedBody2 = _body2(color: MvmtDarkTheme.lightMuted);

final TextStyle foregroundMutedBody3 = _body3(color: MvmtDarkTheme.lightMuted);

final TextStyle foregroundMutedBody3Bold = _body3Bold(color: MvmtDarkTheme.lightMuted);

//endregion

//region ForegroundBlack
final TextStyle foregroundBlackTitle3 = _title3(color: MvmtDarkTheme.black);
final TextStyle foregroundBlackBody2 = _body2(color: MvmtDarkTheme.black);
final TextStyle foregroundBlackBody2Bold = _body2Bold(color: MvmtDarkTheme.black);
final TextStyle foregroundBlackBody3 = _body3(color: MvmtDarkTheme.black);
final TextStyle foregroundBlackBody3Bold = _body3Bold(color: MvmtDarkTheme.black);
final TextStyle foregroundBlackHugeBody = _hugeBody(color: MvmtDarkTheme.black);

//endregion

//region Success

final TextStyle successBody1Bold = _body1Bold(color: MvmtDarkTheme.success);

final TextStyle successBody3Bold = _body3Bold(color: MvmtDarkTheme.success);

final TextStyle successBody2 = _body2(color: MvmtDarkTheme.success);

final TextStyle successTitle3 = _title3(color: MvmtDarkTheme.success);

//endregion

//region Danger

final TextStyle dangerTitle2 = _title2(color: MvmtDarkTheme.danger);

final TextStyle dangerBody1Bold = _body1Bold(color: MvmtDarkTheme.danger);

final TextStyle dangerBody3 = _body3(color: MvmtDarkTheme.danger);

//endregion

//region Link

final TextStyle linkBody2Bold = _body2Bold(color: MvmtDarkTheme.link);

final TextStyle linkBody2 = _body2(color: MvmtDarkTheme.link);

final TextStyle linkBody3Bold = _body3Bold(color: MvmtDarkTheme.link);

final TextStyle linkSectionHeader = sectionHeader(color: MvmtDarkTheme.link);

//endregion

//region attention

final TextStyle attentionBody1Bold = _body1Bold(color: MvmtDarkTheme.attention);
final TextStyle attentionBody2 = _body2(color: MvmtDarkTheme.attention);

//endregion

//region Active

final TextStyle activeLargeTitle = _largeTitle(color: MvmtDarkTheme.active);

final TextStyle activeTitle3 = _title3(color: MvmtDarkTheme.active);

final TextStyle activeBody1Bold = _body1Bold(color: MvmtDarkTheme.active);

final TextStyle activeBody3 = _body3(color: MvmtDarkTheme.active);

final TextStyle activeBody3Bold = _body3Bold(color: MvmtDarkTheme.active);

//endregion

//region Inactive

final TextStyle foregroundTitle3Inactive = _title3(color: MvmtDarkTheme.altBackground);

//endregion

TextStyle _hugeTitle({Color color = MvmtDarkTheme.white}) {
  return _baseTextStyle(
    32,
    FontWeight.w800,
    color: color,
    fontFamily: 'SpaceMono',
  );
}

TextStyle _largeTitle({Color color = MvmtDarkTheme.white}) {
  return _baseTextStyle(
    24,
    FontWeight.w800,
    color: color,
    fontFamily: 'SpaceMono',
  );
}

TextStyle _title1({Color color = MvmtDarkTheme.white}) {
  return _baseTextStyle(
    20,
    FontWeight.w800,
    color: color,
    fontFamily: 'SpaceMono',
  );
}

TextStyle _title2({Color color = MvmtDarkTheme.white}) {
  return _baseTextStyle(
    18,
    FontWeight.w800,
    color: color,
    fontFamily: 'SpaceMono',
  );
}

TextStyle _title3({Color color = MvmtDarkTheme.white, TextDecoration? decoration}) {
  return _baseTextStyle(
    16,
    FontWeight.w600,
    color: color,
    decoration: decoration,
    fontFamily: 'SpaceMono',
  );
}

TextStyle _title4({Color color = MvmtDarkTheme.white}) {
  return _baseTextStyle(
    14,
    FontWeight.w700,
    letterSpacing: 0.03,
    color: color,
    fontFamily: 'SpaceMono',
  );
}

TextStyle sectionHeader({Color color = MvmtDarkTheme.white, bool bold = false}) {
  return _baseTextStyle(
    12,
    bold ? FontWeight.w800 : FontWeight.w700,
    color: color,
    fontFamily: 'SpaceMono',
  );
}

TextStyle _hugeBody({Color color = MvmtDarkTheme.white}) {
  return _baseTextStyle(
    24,
    FontWeight.w400,
    color: color,
  );
}

TextStyle _largeBody({Color color = MvmtDarkTheme.white, bool bold = false}) {
  return _baseTextStyle(
    18,
    bold ? FontWeight.w700 : FontWeight.w400,
    color: color,
  );
}

TextStyle _body1({Color color = MvmtDarkTheme.white}) {
  return _baseTextStyle(
    16,
    FontWeight.w400,
    color: color,
  );
}

TextStyle _body1Bold({Color color = MvmtDarkTheme.white}) {
  return _baseTextStyle(
    16,
    FontWeight.w600,
    color: color,
  );
}

TextStyle _body2({Color color = MvmtDarkTheme.white}) {
  return _baseTextStyle(
    14,
    FontWeight.w400,
    color: color,
  );
}

TextStyle _body2Bold({Color color = MvmtDarkTheme.white}) {
  return _baseTextStyle(
    14,
    FontWeight.w600,
    color: color,
  );
}

TextStyle _body3({Color color = MvmtDarkTheme.white}) {
  return _baseTextStyle(
    12,
    FontWeight.w400,
    color: color,
  );
}

TextStyle _body3Bold({Color color = MvmtDarkTheme.white}) {
  return _baseTextStyle(
    12,
    FontWeight.w600,
    color: color,

  );
}

TextStyle _body4({Color color = MvmtDarkTheme.white}) {
  return _baseTextStyle(
    6,
    FontWeight.w700,
    color: color,
    fontFamily: 'SpaceMono',
  );
}

/// {@category Core}
TextStyle _baseTextStyle(
  double size,
  FontWeight fontWeight, {
  bool italic = false,
  double? letterSpacing,
  Color color = MvmtDarkTheme.white,
  TextDecoration? decoration,
      //Jost
  String fontFamily = 'SpaceMono',
}) {
  return TextStyle(
    fontFamily: fontFamily,
    fontWeight: fontWeight,
    fontStyle: italic ? FontStyle.italic : FontStyle.normal,
    fontSize: size,
    letterSpacing: letterSpacing,
    decoration: decoration,
    color: color,
  );
}
