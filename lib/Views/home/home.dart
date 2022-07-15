import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:get/get.dart';
import 'package:wings/Views/home/dashboard.dart';
import 'package:wings/utils/constants.dart';
import 'package:wings/utils/components/navigationbar.dart';

import '../DestinationList.dart';
import '../map.dart';
import '../profile.dart';
import '../tour.dart';

class MyDashBoard extends StatefulWidget {
  @override
  _MyDashBoardState createState() => _MyDashBoardState();
}

class _MyDashBoardState extends State<MyDashBoard> {
  int _currentIndex = 0;

  final _inactiveColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashBoardCont>(builder: 
    (controller){
      return Obx(()=>Scaffold(
        // backgroundColor: Appthem().background,
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex,
            children: [DestinationsPage(),TourPage(), MapTrack(), ProfilePage()],
          ),
        ),
        bottomNavigationBar: CustomAnimatedBottomBar(
        containerHeight: 60.h,
        backgroundColor: Appthem().tabbarColor,
        selectedIndex: controller.tabIndex,
        showElevation: true,
        itemCornerRadius: 22.r,
        curve: Curves.easeIn,
        onItemSelected: controller.changeTabIndex,
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Appthem().primarycolor,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(CupertinoIcons.car_detailed),
            title: Text('Tour'),
            activeColor: Appthem().primarycolor,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.location_pin),
            title: Text('Track'),
            activeColor: Appthem().primarycolor,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
            activeColor: Appthem().primarycolor,
            textAlign: TextAlign.center,
          ),
        ],
        )));
    });
  }
}
