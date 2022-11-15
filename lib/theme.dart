import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

ThemeData theme() {
  return ThemeData(
    iconTheme: iconTheme(),
    primarySwatch: black,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    textTheme: textTheme(),
    tabBarTheme: tabBarTheme(),
    textButtonTheme: textButtonTheme(),
    elevatedButtonTheme: elevatedButtonTheme(),
    popupMenuTheme: popupMenuTheme(),
    listTileTheme: listTileTheme(),
    bottomSheetTheme: bottomSheetTheme(),
    radioTheme: radioTheme(),
    
  );
}

TabBarTheme tabBarTheme() => const TabBarTheme(labelColor: Colors.black);

IconThemeData iconTheme() =>const IconThemeData(color: kPrimaryColor);

RadioThemeData radioTheme() {
  return RadioThemeData(
    fillColor: MaterialStateProperty.all(kPrimaryColor),
    
  );
}

BottomSheetThemeData bottomSheetTheme() {
  return const BottomSheetThemeData(
    shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(
          40,
        ),
        topRight: Radius.circular(
          40,
        ),
      )),
  );
}

ListTileThemeData listTileTheme() {
  return ListTileThemeData(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),),
        contentPadding: EdgeInsets.symmetric(
        vertical: 10, horizontal: 15)
  );
}

const MaterialColor black = MaterialColor(
  _blackPrimaryValue,
  <int, Color>{
   50: Color(0xFFE3F2FD),
      100: Color(0xFFBBDEFB),
      200: Color(0xFF90CAF9),
      300: Color(0xFF64B5F6),
      400: Color(0xFF42A5F5),
      500: Color(_blackPrimaryValue),
      600: Color(0xFF1E88E5),
      700: Color(0xFF1976D2),
      800: Color(0xFF1565C0),
      900: Color(0xFF0D47A1),
  },
);
const int _blackPrimaryValue = 0xFF000000;

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
  return const TextButtonThemeData(
    // style: TextButton.styleFrom(
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(
    //         30,
    //       ),
    //     ),
    //     side: const BorderSide(color: kPrimaryColor),
    //     foregroundColor: kPrimaryColor),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
      titleTextStyle: TextStyle(color: Color(0xFF8B8B8B)),
      color: Colors.white,
      centerTitle: false,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
      ));
}

TextTheme textTheme() {
  return GoogleFonts.lexendDecaTextTheme().copyWith(
    bodyText1: const TextStyle(
      fontSize: kTertiaryFontSize,
      color: kTextColor,
    ),
    bodyText2: const TextStyle(
      fontSize: kTertiaryFontSize,
      color: kTextColor,
    ),
  );
}

InputDecorationTheme inputDecorationTheme() {
  return InputDecorationTheme(
    isDense: false,
    fillColor: kSecondaryColor,
    filled: true,
    contentPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        15,
      ),
      borderSide: const BorderSide(
        color: Colors.red,
      ),
    ),
    enabledBorder: enabledBorder(),
    focusedBorder: outlineInputBorder(),
    disabledBorder: enabledBorder(),
  );
}

OutlineInputBorder enabledBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        15,
      ),
    gapPadding: 10,

      borderSide: const BorderSide(
        color: Colors.transparent,
      ));
}

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(
      15,
    ),
    gapPadding: 10,
    borderSide: const BorderSide(
      color: kPrimaryColor,
    ),
  );
}
