import 'package:flutter/material.dart';

const orangeThemeColor = Color(0xFFFF9E0F);
const darkBlueThemeColor = Color(0xFF15203e);
const lightGrayThemeColor = Color(0xFFF0F0F0);

const backgroundColor = Color(0xFFFFFFFF);
const navigationBarBackgroudColor = backgroundColor;
const navigationBarIconsColor = darkBlueThemeColor;

const darkGrayBackgroundColor = Color(0xFF999999);
const lightGrayBackgroundColor = Color(0xFFD9D9D9);

const greenIndicationColor = Color(0xFF3D9527);

const primaryColor = darkBlueThemeColor;

const darkTextColor = darkBlueThemeColor;
const lightTextColor = backgroundColor;

class Themes {
  ThemeData themeData = ThemeData(
    fontFamily: 'Poppins',
    dividerColor: Colors.transparent,
    scaffoldBackgroundColor: backgroundColor,
    backgroundColor: backgroundColor,
    dialogBackgroundColor: backgroundColor,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: navigationBarBackgroudColor,
      foregroundColor: navigationBarIconsColor,
    ),
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: primaryColor,
      onPrimary: Colors.black,
      // Colors that are not relevant to AppBar in LIGHT mode:
      secondary: Colors.grey,
      onSecondary: Colors.grey,
      background: Colors.grey,
      onBackground: Colors.grey,
      surface: Colors.grey,
      onSurface: Colors.grey,
      error: Colors.grey,
      onError: Colors.grey,
    ),
  );
}

class CustomDarkTextStyle {
  static TextStyle h1(BuildContext context) {
    return Theme.of(context).textTheme.headlineLarge!.copyWith(
          fontSize: 16,
          height: 1.25, // line height: 20 px
          color: darkTextColor,
          fontWeight: FontWeight.bold,
        );
  }

  static TextStyle h2(BuildContext context) {
    return Theme.of(context).textTheme.headlineMedium!.copyWith(
          fontSize: 14,
          height: 1.20, // line height: 16 px
          color: darkTextColor,
          fontWeight: FontWeight.bold,
        );
  }

  static TextStyle h3(BuildContext context) {
    return Theme.of(context).textTheme.headlineSmall!.copyWith(
          fontSize: 12,
          height: 1.167, // line height: 14 px
          color: darkTextColor,
          fontWeight: FontWeight.bold,
        );
  }

  static TextStyle h4(BuildContext context) {
    return Theme.of(context).textTheme.headlineSmall!.copyWith(
          fontSize: 11,
          height: 1.095, // line height: 12 px
          color: darkTextColor,
          fontWeight: FontWeight.bold,
        );
  }

  static TextStyle bodyLarge(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge!.copyWith(
          fontSize: 14,
          height: 1.285, // line height: 18 px
          color: darkTextColor,
          fontWeight: FontWeight.normal,
        );
  }

  static TextStyle bodyMedium(BuildContext context) {
    return Theme.of(context).textTheme.bodyMedium!.copyWith(
          fontSize: 12,
          height: 1.167, // line height: 14 px
          color: darkTextColor,
          fontWeight: FontWeight.normal,
        );
  }

  static TextStyle bodyMediumUnderline(BuildContext context) {
    return Theme.of(context).textTheme.bodyMedium!.copyWith(
          fontSize: 12,
          height: 1.167, // line height: 14 px
          color: darkTextColor,
          fontWeight: FontWeight.normal,
          decoration: TextDecoration.underline,
        );
  }

  static TextStyle bodySmall(BuildContext context) {
    return Theme.of(context).textTheme.bodySmall!.copyWith(
          fontSize: 10,
          height: 1.2, // line height: 12 px
          color: darkTextColor,
          fontWeight: FontWeight.normal,
        );
  }
}

class CustomWhiteTextStyle {
  static TextStyle h1(BuildContext context) {
    return CustomDarkTextStyle.h1(context).copyWith(
      color: backgroundColor,
    );
  }

  static TextStyle h2(BuildContext context) {
    return CustomDarkTextStyle.h2(context).copyWith(
      color: backgroundColor,
    );
  }

  static TextStyle h3(BuildContext context) {
    return CustomDarkTextStyle.h3(context).copyWith(
      color: backgroundColor,
    );
  }

  static TextStyle h4(BuildContext context) {
    return CustomDarkTextStyle.h4(context).copyWith(
      color: backgroundColor,
    );
  }

  static TextStyle bodyLarge(BuildContext context) {
    return CustomDarkTextStyle.bodyLarge(context).copyWith(
      color: backgroundColor,
    );
  }

  static TextStyle bodyMedium(BuildContext context) {
    return CustomDarkTextStyle.bodyMedium(context).copyWith(
      color: backgroundColor,
    );
  }

  static TextStyle bodySmall(BuildContext context) {
    return CustomDarkTextStyle.bodySmall(context).copyWith(
      color: backgroundColor,
    );
  }
}

class CustomGrayTextStyle {
  static TextStyle h1(BuildContext context) {
    return CustomDarkTextStyle.h1(context).copyWith(
      color: darkGrayBackgroundColor,
    );
  }

  static TextStyle h2(BuildContext context) {
    return CustomDarkTextStyle.h2(context).copyWith(
      color: darkGrayBackgroundColor,
    );
  }

  static TextStyle h3(BuildContext context) {
    return CustomDarkTextStyle.h3(context).copyWith(
      color: darkGrayBackgroundColor,
    );
  }

  static TextStyle h4(BuildContext context) {
    return CustomDarkTextStyle.h4(context).copyWith(
      color: darkGrayBackgroundColor,
    );
  }

  static TextStyle bodyLarge(BuildContext context) {
    return CustomDarkTextStyle.bodyLarge(context).copyWith(
      color: darkGrayBackgroundColor,
    );
  }

  static TextStyle bodyMedium(BuildContext context) {
    return CustomDarkTextStyle.bodyMedium(context).copyWith(
      color: darkGrayBackgroundColor,
    );
  }

  static TextStyle bodySmall(BuildContext context) {
    return CustomDarkTextStyle.bodySmall(context).copyWith(
      color: darkGrayBackgroundColor,
    );
  }
}
