import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// adding a text theme
TextTheme TEXT_DEF = TextTheme(
  headline1: TextStyle(
    fontSize: 30.sp,
    color: Colors.black87,
    fontWeight: FontWeight.bold,
  ),
  headline5: TextStyle(
    fontSize: 16.sp,
    color: Colors.black87,
    // fontWeight: FontWeight.bold,
  ),
  bodyText2: TextStyle(
    fontSize: 20.sp,
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