import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:get/get.dart';
import 'package:wings/utils/constants.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    this.press,
    required this.widget,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final VoidCallback? press;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Appthem().primarycolor,
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 16.h),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.r)),
          backgroundColor: Appthem().formbackcolor,
        ),
        onPressed: press,
        child: Row(
          children: [
            Icon(
              icon,
              color: Appthem().primarycolor,
            ),
            SizedBox(width: 20),
            Expanded(
                child: Text(
              text,
              style: Get.textTheme.headline2,
            )),
            widget,
          ],
        ),
      ),
    );
  }
}
