import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:get/get.dart';
import 'package:wings/utils/constants.dart';

class AlertDialogs {
  AlertDialogs(this.context, this.change);
  final BuildContext context;
  final VoidCallback change;
  showAlertDialog() {
    var style = TextStyle(
      fontWeight: FontWeight.bold,
    );
    // set up the button
    Widget cancelButton = InkWell(
        onTap: () => {Get.back()},
        child: Text(
          "Cancle",
          style: Get.textTheme.headline3,
        ));
    Widget continueButton = InkWell(
        onTap: change,
        child: Text(
          "change",
          style: Get.textTheme.headline2,
        ));

    final TextEditingController controller = TextEditingController();
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      backgroundColor: Colors.white,
      insetPadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.zero,
      content: Padding(
        padding: EdgeInsets.only(top: 20.h,left: 16.w,right: 16.w),
        child: Container(
                    height: 45.h,
                    width: 310.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        // color: Appthem().formbackcolor
                        color: Color(0xffdfe5ed)
                        ),child:TextFormField(
          // initialValue: val,
          controller: controller,
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
          ),
                        ),
        ),
      ),
      actionsAlignment: MainAxisAlignment.spaceAround,
      actions: [
        cancelButton,
        continueButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
