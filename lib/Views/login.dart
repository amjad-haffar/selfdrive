import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:get/get.dart';
import 'package:wings/Controllers/signupcont.dart';
import 'package:wings/Views/signup.dart';import 'package:wings/utils/constants.dart';
import 'package:wings/utils/components/widgets.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final SignUpCont user = Get.put(SignUpCont());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset('assets/images/doted.png',width: 170.w,height: 220.h,)),
            Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Image.asset('assets/images/header.png',
            // width: 50.w,height: 50.h,
            // width:200.w,height: 220.h,
            )),
          Positioned(
            child: Container(
              padding: EdgeInsets.only(left: 16.w, right: 16.w,top: 40.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/logo1.png",width: 220.w,),
                  Appthem().addVerBox(12.h),
                  Container(
                    height: 45.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        // color: Appthem().formbackcolor
                        color: Color(0xffdfe5ed)
                        ),
                    child: TextFormField(
                      controller: _emailController,
                      cursorColor: Colors.blue,
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 15.w, bottom: 10.h, top: 10.h, right: 15.w),
                          hintText: "Email Address"),
                    ),
                  ),
                  Appthem().addVerBox(12.h),
                  Container(
                    height: 45.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        // color: Appthem().formbackcolor
                        color: Color(0xffdfe5ed)
                        ),
                    child: TextFormField(
                      controller: _passwordController,
                      cursorColor: Colors.blue,
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 15.w, bottom: 10.h, top: 10.h, right: 15.w),
                          hintText: "Password"),
                    ),
                  ),
                  Container(
                    height: 60.h,
                    padding: EdgeInsets.only(top: 12.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () => {
                            user.initData(_emailController.text, "", _passwordController.text),
                            user.login()
                          },
                          child: Container(
                          width: 328.w,
                            decoration: BoxDecoration(
                                color: Appthem().primarycolor,
                                borderRadius: BorderRadius.circular(16.r)),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 12.h, bottom: 12.h, left: 14.w, right: 18.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Log in",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.sp,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Material(
                    elevation: 0,
                    child: Container(
                      padding: EdgeInsets.only(top: 14.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text("don't have an account? ",style: TextStyle(color: Colors.grey[500]),),
                        InkWell(onTap: () => {
                          Get.off(()=> RegisterPage())
                        }, child: Text("Sign Up",style: TextStyle(color: Appthem().primarycolor),)),
                      ]),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
