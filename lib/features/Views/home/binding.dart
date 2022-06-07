import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:wings/features/Views/Login/login.dart';
import 'package:wings/features/Views/Login/logincont.dart';
import 'package:wings/features/Views/Map/mapcont.dart';
import 'package:wings/features/Views/Profile/profilecont.dart';
import 'package:wings/features/Views/Signup/signupcont.dart';
import 'package:wings/features/Views/home/dashboard.dart';
import 'package:wings/features/Views/tour/tourcont.dart';

class DashBoardBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashBoardCont>(() => DashBoardCont());
    Get.lazyPut<MapCont>(() => MapCont());
    Get.lazyPut<Tourcont>(() => Tourcont());
    Get.lazyPut<Profilecont>(() => Profilecont());
  }
}
