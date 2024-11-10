import 'package:flutter/material.dart';

class MembershipApp1Colors {
  // ライトモード用カラー定義
  static const Color primaryColor = Color(0xFFEF2A39);
  static const Color secondaryColor = Color(0xFFFF9633);
  static const Color tertiaryColor = Color(0xFF1CC019);

  static const Color grey900 = Color(0xFF000000);
  static const Color grey800 = Color(0xFF3C2F2F);
  static const Color grey700 = Color(0xFF3C2F2F);
  static const Color grey600 = Color(0xFF6A6A6A);
  static const Color grey500 = Color(0xFF808080);
  static const Color grey400 = Color(0xFFA9A9A9);
  static const Color grey300 = Color(0xFFC2C6C2);
  static const Color grey200 = Color(0xFFF3F4F6);
  static const Color grey100 = Color(0xFFFFFFFF);

  static const ColorScheme lightColorScheme = ColorScheme(
    primary: primaryColor,
    secondary: secondaryColor,
    tertiary: tertiaryColor,
    surface: grey200,
    onPrimary: grey100,
    onSecondary: grey100,
    onSurface: grey900,
    error: Colors.red,
    onError: grey100,
    secondaryContainer: grey800,
    brightness: Brightness.light,
  );

  // ダークモード用カラー定義
  static const Color darkPrimaryColor = Color(0xFFEF5350); // ライトよりやや明るい赤
  static const Color darkSecondaryColor = Color(0xFFFF7043);
  static const Color darkTertiaryColor = Color(0xFF66BB6A);

  static const Color darkGrey900 = Color(0xFFFFFFFF);
  static const Color darkGrey800 = Color(0xFFBDBDBD);
  static const Color darkGrey700 = Color(0xFF9E9E9E);
  static const Color darkGrey600 = Color(0xFF757575);
  static const Color darkGrey500 = Color(0xFF616161);
  static const Color darkGrey400 = Color(0xFF424242);
  static const Color darkGrey300 = Color(0xFF303030);
  static const Color darkGrey200 = Color(0xFF212121);
  static const Color darkGrey100 = Color(0xFF121212);

  static const ColorScheme darkColorScheme = ColorScheme(
    primary: darkPrimaryColor,
    secondary: darkSecondaryColor,
    tertiary: darkTertiaryColor,
    surface: darkGrey200,
    onPrimary: darkGrey100,
    onSecondary: darkGrey100,
    onSurface: darkGrey900,
    error: Colors.redAccent,
    onError: darkGrey100,
    secondaryContainer: darkGrey800,
    brightness: Brightness.dark,
  );
}
