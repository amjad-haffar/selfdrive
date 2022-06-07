import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:wings/features/Views/Destination/DestinationList.dart';
import 'package:wings/features/Views/Map/map.dart';
import 'package:wings/features/Views/Profile/profile.dart';
import 'package:wings/features/Views/home/dashboard.dart';
import 'package:wings/features/Views/Login/login.dart';
import 'package:wings/features/Views/Signup/signup.dart';
import 'package:wings/features/Views/tour/tour.dart';
import 'package:wings/utils/components/constants.dart';
import 'package:wings/utils/components/navigationbar.dart';

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
      return Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex,
            children: [DestinationsPage(),TourPage(), MapTrack(), ProfilePage()],
          ),
        ),
        bottomNavigationBar: CustomAnimatedBottomBar(
        containerHeight: 70,
        backgroundColor: Colors.white,
        selectedIndex: controller.tabIndex,
        showElevation: true,
        itemCornerRadius: 24,
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
            icon: Icon(LineIcons.car),
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
        ));
    });
  }
}
