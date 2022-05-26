import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wings/core/immutable/utils/screen_util.wings.dart';
import 'dart:ui';
import 'core/immutable/utils/constants.dart';
import 'features/Views/DestinationList.dart';

late SharedPreferences sharedPreferences;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  await dotenv.load(fileName: "assets/config/.env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    double screenwidth = window.physicalSize.width;
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      builder: (context) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App flutter',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            // responsive text size
            // textTheme: screenwidth >= 500 ? TEXT_DEF : TEXT_SMALL,
            textTheme: TEXT_DEF),
        // home: IndexView(),
        home: 
          DestinationsPage()),
        
      
    );
  }
}
