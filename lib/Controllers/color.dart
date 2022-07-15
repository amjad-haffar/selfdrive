import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ColorCont extends GetxController {
  Color get main => isLightMode ? Color(0xff0b4d93):Colors.black87;
  RxBool _isDark = false.obs;
  bool get isdark => _isDark.value;
  bool get isLightMode => !(_isDark.value);
}
