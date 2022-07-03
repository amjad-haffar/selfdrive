import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wings/Views/home/splash.dart';
import 'dart:ui';
import 'Views/home/binding.dart';
import 'Views/signup.dart';
import 'utils/constants.dart';

late SharedPreferences sharedPreferences;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await GetStorage.init();
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
            textTheme: Appthem().TEXT_DEF),
        initialRoute: "/",
        getPages: [
          GetPage(name: "/", 
          page: ()=>  SplashView(),
          binding: DashBoardBind()
          ),
        ],
        // initialBinding: DashBoardBind(),
        // home: 
        //    RegisterPage()
      )
    );
  }
}
