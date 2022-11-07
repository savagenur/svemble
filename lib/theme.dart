import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

ThemeData theme() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      // fontFamily: "Muli",
      appBarTheme: appBarTheme(),
      inputDecorationTheme: inputDecorationTheme(),
      textTheme: textTheme(),
      tabBarTheme: const TabBarTheme(labelColor: Colors.black),
      textButtonTheme: textButtonTheme(),
      elevatedButtonTheme: elevatedButtonTheme(),
      popupMenuTheme: popupMenuTheme(),
      primaryColor: Colors.black);
}

ElevatedButtonThemeData elevatedButtonTheme() {
  return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: kPrimaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))));
}

PopupMenuThemeData popupMenuTheme() {
  return PopupMenuThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  );
}

TextButtonThemeData textButtonTheme() {
  return TextButtonThemeData(
    style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            30,
          ),
        ),
        side: const BorderSide(color: kPrimaryColor),
        foregroundColor: kPrimaryColor),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
      titleTextStyle: TextStyle(color: Color(0xFF8B8B8B)),
      color: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
      ));
}

TextTheme textTheme() {
  // return const TextTheme(
  //     bodyText1: TextStyle(
  //       color: kTextColor,
  //     ),
  //     bodyText2: TextStyle(
  //       color: kTextColor,
  //     ),
  //     headline6: TextStyle(
  //       color: Color(0xFF8B8B8B),
  //     ));
  return GoogleFonts.lexendDecaTextTheme().copyWith(
    bodyText1: TextStyle(
      color: kTextColor,
    ),
    bodyText2: TextStyle(
      color: kTextColor,
    ),
  );
}

InputDecorationTheme inputDecorationTheme() {
  return InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    border: outlineInputBorder(),
    enabledBorder: outlineInputBorder(),
    focusedBorder: outlineInputBorder(),
  );
}

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(
      28,
    ),
    gapPadding: 10,
    borderSide: const BorderSide(
      color: kTextColor,
    ),
  );
}
