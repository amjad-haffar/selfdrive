import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Appthem {
// adding a text theme
  Color primarycolor = Color(0xff0b4d93);
  Color formbackcolor = Color(0xffdfe5ed);
  Color black = Color(0xff4b4b4b);
  TextTheme TEXT_DEF = TextTheme(
    headline1: TextStyle(
      fontSize: 24.sp,
      color: Color(0xff4b4b4b),
      fontWeight: FontWeight.bold,
    ),
    headline5: TextStyle(
      fontSize: 16.sp,
      color: Color(0xff4b4b4b),
    ),
    bodyText2: TextStyle(
      fontSize: 16.sp,
      color: Colors.grey[600],
      fontWeight: FontWeight.w500,
    ),
    // colored small headers
    headline2: TextStyle(
      fontSize: 16.sp,
      color: Colors.blue[900],
      fontWeight: FontWeight.bold,
    ),
    headline3: TextStyle(
      fontSize: 16.sp,
      color: Color(0xff4b4b4b),
      fontWeight: FontWeight.bold,
    ),
  );
}
