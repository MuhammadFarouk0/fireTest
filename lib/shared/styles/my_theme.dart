import 'package:flutter/material.dart';

class MyTheme {
  static final Color colorBlue = Color(0xFF5D9CEC);
  static final Color colorOffWhite = Color(0xFFDFECDB);
  static final Color colorGreen = Color(0xFF61E757);
  static final Color colorRed = Color(0xFFEC4B4B);
  static final ThemeData lightTheme = ThemeData(
      primaryColor: colorBlue,
      scaffoldBackgroundColor: colorOffWhite,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.transparent,
          )),
      textTheme: TextTheme(
        bodyText1: TextStyle(
            fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700),
        headline2: TextStyle(fontSize: 24, color: colorGreen),
        headline4: TextStyle(fontSize: 24, color: Colors.black,fontWeight: FontWeight.bold),
        headline3: TextStyle(fontSize: 24, color: colorRed),
        bodyText2: TextStyle(fontSize: 20, color: Colors.black),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: colorBlue,
        unselectedItemColor: Colors.grey,
      ));

  // static final ThemeData darkTheme = ThemeData(
  //     backgroundColor: colorDarkBlue,
  //     primaryColor: colorYellow,
  //     scaffoldBackgroundColor: Colors.transparent,
  //     textTheme: TextTheme(
  //         bodyText1: TextStyle(fontSize: 18, color: Colors.white),
  //         headline4: TextStyle(fontSize: 28, color: Colors.white),
  //         headline5: TextStyle(fontSize: 24, color: Colors.white)),
  //     appBarTheme: AppBarTheme(
  //         iconTheme: IconThemeData(color: Colors.white),
  //         backgroundColor: Colors.transparent,
  //         elevation: 0,
  //         titleTextStyle: TextStyle(
  //           color: Colors.white,
  //           fontSize: 30,
  //           fontWeight: FontWeight.w500,
  //         )),
  //     bottomSheetTheme: BottomSheetThemeData(backgroundColor: colorDarkBlue),
  //     bottomNavigationBarTheme: BottomNavigationBarThemeData(
  //       backgroundColor: colorDarkBlue,
  //       selectedIconTheme: IconThemeData(
  //         color: colorYellow,
  //       ),
  //       unselectedIconTheme: IconThemeData(color: Colors.white),
  //       selectedLabelStyle: TextStyle(color: colorYellow),
  //       selectedItemColor: colorYellow,
  //       unselectedItemColor: Colors.white,
  //     ));
}
