import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Appthem extends GetxController {
  RxBool isDark = false.obs;
  Color get buttonText => isLightMode ? Colors.white : Color(0xffdee3e8);
  Color get primarycolor => isLightMode ? Color(0xff0b4d93) : Color(0xff0b4d93);
  Color get formbackcolor =>
      isLightMode ? Color(0xffdfe5ed) : Color(0xffbcc2c9);
  Color get background => isLightMode ? Colors.grey[50]! : Color(0xff1f252d);
  Color get tabbarColor => isLightMode ? Colors.white : Colors.black;
  Color get shadow => isLightMode ? Colors.grey[400]! : Colors.grey[900]!;
  Color get tourcard => isLightMode ? Colors.white : Color(0xff2b313b);
  Color get grey => isLightMode ? Colors.grey[600]! : Colors.grey[400]!;
  // Colors.white;
  bool get isdark => isDark.value;
  bool get isLightMode => !(isDark.value);
  Color get black => isLightMode ? Color(0xff4b4b4b) : Color(0xffbcc2c9);
  toggle() {
    if (isDark.value == true) {
      isDark.value = false;
      print("dark");
    } else {
      isDark.value = true;
      print("not");
    }
    update();
  }

  // Colors.grey[300]!;
  Color get blackcolor => isdark ? Colors.black87 : Colors.white;
  TextTheme get TEXT_DEF => TextTheme(
        headline1: TextStyle(
          fontSize: 24.sp,
          color: black,
          fontWeight: FontWeight.bold,
        ),
        headline5: TextStyle(
          fontSize: 16.sp,
          color: black,
        ),
        bodyText2: TextStyle(
          fontSize: 16.sp,
          color: grey,
          fontWeight: FontWeight.w500,
        ),
        // colored small headers
        headline2: TextStyle(
          fontSize: 16.sp,
          color: primarycolor,
          fontWeight: FontWeight.bold,
        ),
        headline3: TextStyle(
          fontSize: 16.sp,
          color: black,
          fontWeight: FontWeight.bold,
        ),
        headline4: TextStyle(
          fontSize: 18.sp,
          color: black,
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
