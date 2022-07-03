import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Appthem {
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
    headline4: TextStyle(
      fontSize: 18.sp,
      color: Color(0xff4b4b4b),
      fontWeight: FontWeight.bold,
    ),
  );
  Widget addVerBox(double x) {
  return SizedBox(
    height: x,
  );
}

Widget addhorBox(double x) {
  return SizedBox(
    width: x,
  );
}
final shimmerGradient = LinearGradient(
  colors: [
    Color(0xFFEBEBF4),
    Color(0xFFF4F4F4),
    Color(0xFFEBEBF4),
  ],
  stops: [
    0.1,
    0.3,
    0.4,
  ],
  begin: Alignment(-1.0, -0.3),
  end: Alignment(1.0, 0.3),
  tileMode: TileMode.clamp,
);
}
