import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wings/features/Views/Signup/signup.dart';
import 'package:wings/features/Views/home/binding.dart';
import 'package:wings/features/Views/home/home.dart';
import 'dart:ui';
import 'features/Views/splash.dart';
import 'utils/components/constants.dart';

late SharedPreferences sharedPreferences;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
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
            textTheme: Appthem().TEXT_DEF),
        // initialRoute: "/",
        // getPages: [
        //   GetPage(name: "/", 
        //   page: ()=>  MyDashBoard(),
        //   binding: DashBoardBind()
        //   ),
        // ],
        // home: IndexView(),
        home: 
           RegisterPage()
      )
          // DestinationsPage()),
    );
  }
}
