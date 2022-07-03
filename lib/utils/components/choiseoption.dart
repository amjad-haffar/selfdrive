import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:get/get.dart';
import 'package:wings/Controllers/DestList.dart';

import '../constants.dart';

class Choiceoption extends StatelessWidget {
  const Choiceoption({Key? key, required this.textdata, required this.index, required this.cont})
      : super(key: key);
  final String textdata;
  final int index;
  final DestListCrtl cont;
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return  
      InkWell(
          onTap: () {
            cont.selectfilter(index);
          },
          child: 
            Obx(()=>
               Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r), color: cont.selected[index] ? Appthem().primarycolor:Appthem().formbackcolor),
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                margin: EdgeInsets.only(left: 12.w),
                child: Text(
                  textdata,
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color:  cont.selected[index]? Colors.white: Colors.black87,
                  ),
                ),
              ),
            ),
    );
  }
}