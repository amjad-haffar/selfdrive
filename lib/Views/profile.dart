import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:get/get.dart';
import 'package:wings/Controllers/profilecont.dart';
import 'package:wings/utils/components/alert.dart';
import 'package:wings/utils/components/profilecard.dart';
import 'package:wings/utils/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Appthem cont = Get.find();
    return Obx(() => Scaffold(
        backgroundColor: Appthem().background,
        body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                child: Text("Edit Profile Settings",style: Get.textTheme.headline1,),
                  ),
            Container(
              // height: 460.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Appthem().addVerBox(40.h),
                  ProfileMenu(
                    icon: Icons.person,
                    text: "Username",
                    press: () => {AlertDialogs(context, () {}).showAlertDialog()},
                    widget: Icon(Icons.arrow_forward_ios),
                  ),
                  ProfileMenu(
                    icon: Icons.email,
                    text: "Email",
                    press: () => {AlertDialogs(context, () {}).showAlertDialog()},
                    widget: Icon(Icons.arrow_forward_ios),
                  ),
                  ProfileMenu(
                    icon: Icons.password,
                    text: "Password",
                    press: () => {AlertDialogs(context, () {}).showAlertDialog()},
                    widget: Icon(Icons.arrow_forward_ios),
                  ),
                  ProfileMenu(
                    icon: Icons.location_pin,
                    text: "Refresh Location",
                    press: () => {
                      Profilecont().refreshLocation(),
                      Get.snackbar("Location", "refreshed!")
                    },
                    widget: Icon(Icons.refresh),
                  ),
                  ProfileMenu(
                    icon: Icons.style,
                    text: "Dark Theme",
                    press: () => {cont.toggle()},
                    widget: Container(
                        decoration: BoxDecoration(
                            color: Appthem().formbackcolor,
                            shape: BoxShape.circle),
                        child: Icon(
                          Icons.dark_mode,
                        )),
                  ),
                ],
              ),
            ),
          ],
        )));
  }
}
