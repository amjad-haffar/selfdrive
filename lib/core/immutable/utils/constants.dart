import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// adding a text theme
const Color primarycolor = Color(0xff0b4d93);
TextTheme TEXT_DEF = TextTheme(
  headline1: TextStyle(
    fontSize: 24.sp,
    color: Colors.black87,
    fontWeight: FontWeight.bold,
  ),
  headline5: TextStyle(
    fontSize: 16.sp,
    color: Colors.black87,
    // fontWeight: FontWeight.bold,
  ),
  bodyText2: TextStyle(
    fontSize: 16.sp,
    color: Colors.grey[600],
    fontWeight: FontWeight.bold,
  ),
  // colored small headers
  headline2: TextStyle(
    fontSize: 16.sp,
    color: Colors.blue[900],
    fontWeight: FontWeight.bold,
  ),
  headline3: TextStyle(
    fontSize: 16.sp,
    color: Colors.black87,
    fontWeight: FontWeight.bold,
  ),
);
// adding a small text theme
const TextTheme TEXT_SMALL = TextTheme(
    headline1: TextStyle(
  fontSize: 15,
));
// const Colors buttons_color = Colors.accents;