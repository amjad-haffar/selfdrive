import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:wings/Controllers/mapcont.dart';
import 'package:wings/Controllers/tour.dart';
import 'package:wings/Views/home/dashboard.dart';

import '../../Controllers/DestList.dart';

class DashBoardBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashBoardCont>(() => DashBoardCont());
    Get.lazyPut<DestListCrtl>(() => DestListCrtl());
    Get.lazyPut<MapCont>(() => MapCont());
    Get.lazyPut<TourCont>(() => TourCont());
    // Get.lazyPut<Profilecont>(() => Profilecont());
  }
}
