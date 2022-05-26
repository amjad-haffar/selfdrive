import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wings/core/immutable/utils/widgets.dart';

class DestDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    dynamic data = Get.arguments;
    final ThemeData themeData = Theme.of(context);
    return SafeArea(
      child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.r)),
              child: Image.asset(data["image"]),
              ),
              addVerBox(10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text("About this place",style: themeData.textTheme.headline1,),
                Text("Location:"),
                Text("Desciption: ",style: themeData.textTheme.bodyText2,),
                addVerBox(12.h),
                Text("this is the desciption for this location this is the desciption for this location",style:  themeData.textTheme.headline5,),
                ],
                ),
              )
        ],
      )),
    );
  }
}
