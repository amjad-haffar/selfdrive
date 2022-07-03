import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:wings/utils/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// icons

class Optionbutton extends StatelessWidget {
  const Optionbutton({Key? key, required this.text, required this.icon, this.width})
      : super(key: key);
  final String text;
  final IconData icon;
  final double? width;
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return InkWell(
      child: Container(
        width: width,
        decoration: BoxDecoration(
            color: Colors.black87, borderRadius: BorderRadius.circular(50.r)),
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            Appthem().addhorBox(10.w),
            Text(
              text,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      onTap: () {},
    );
  }
}



