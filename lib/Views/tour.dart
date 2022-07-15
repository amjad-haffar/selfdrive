import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wings/Controllers/DestList.dart';
import 'package:wings/Controllers/mapcont.dart';
import 'package:wings/Controllers/tour.dart';
import 'package:wings/api/Request.dart';
import 'package:wings/utils/constants.dart';
import 'package:wings/utils/components/selectcard.dart';
import 'package:wings/utils/components/widgets.dart';
import 'package:get/get.dart';

class TourPage extends StatelessWidget {
  TourPage({Key? key}) : super(key: key);
  final TourCont tour = Get.find();
  @override
  Widget build(BuildContext context) {
    final DestListCrtl descont = Get.find();
    final ThemeData themeData = Theme.of(context);
    return SafeArea(
      child: Scaffold(
          backgroundColor: Appthem().background,
          body: tour.selected.isNotEmpty
              ? Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 12.h, horizontal: 12.w),
                          child: Row(
                            children: [
                              Text("Tour Price: ",
                                  style: themeData.textTheme.headline1),
                              Text(
                                "\$500",
                                style: TextStyle(
                                  fontSize: 24.sp,
                                  color: Appthem().primarycolor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 12.w),
                          child: Text("Your Best Route: ",
                              style: themeData.textTheme.headline1),
                        ),
                        Container(
                            height: 440.h,
                            child:
                                // tour.selected.length!=0?
                                // child:
                                Obx(
                              () => ListView.builder(
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                itemCount: tour.selected.length,
                                itemBuilder: (context, index) =>
                                    tour.selected.length == index + 1
                                        ? Column(
                                            children: [
                                              SelectCard(
                                                dest: tour.selected[index],
                                              ),
                                              Appthem().addVerBox(60.h),
                                            ],
                                          )
                                        : SelectCard(
                                            // dest: descont.getDataOf(tour.selected[index]),
                                            dest: tour.selected[index],
                                          ),
                              ),
                            )),
                      ],
                    ),
                    Positioned(
                      width: ScreenUtil().screenWidth,
                      bottom: 8.h,
                      child: InkWell(
                        onTap: () async {
                          List<int> data = [];
                          for (int i = 0; i < tour.selected.length; i++) {
                            data.add(tour.selected[i].id);
                          }
                        },
                        child: Container(
                          height: 60.h,
                          width: 160.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  height: 50.h,
                                  width: 160.w,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Appthem().shadow,
                                            blurRadius: 10,
                                            spreadRadius: 1)
                                      ],
                                      color:
                                          Colors.green[800]!.withOpacity(0.85),
                                      borderRadius:
                                          BorderRadius.circular(20.r)),
                                  child: Center(
                                      child: Text(
                                    "Start Tour!",
                                    style: TextStyle(
                                        color: Appthem().buttonText, fontSize: 24.sp),
                                  ))),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              : Center(
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/pigoen.png',
                      width: 200.w,
                    ),
                    Text(
                      "No places to view",
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: Appthem().black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Select destination from home",
                      style:
                          TextStyle(fontSize: 18.sp, color: Colors.grey[600]),
                    )
                  ],
                ))),
    );
  }
}
