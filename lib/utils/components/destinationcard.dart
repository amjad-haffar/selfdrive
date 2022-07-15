import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:wings/Controllers/DestList.dart';
import 'package:wings/Models/Destinations.dart';
import 'package:wings/Views/details.dart';
import 'package:wings/utils/constants.dart';

class Destiantionswidet extends StatelessWidget {
  const Destiantionswidet(
      {Key? key, required this.itemdata, this.index, required this.cont})
      : super(key: key);
  final Destinations itemdata;
  final dynamic index;
  final DestListCrtl cont;
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      height: 246.h,
      margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
      padding: EdgeInsets.all(10.w),
      child: InkWell(
        onTap: () => {
          Get.to(() => DestDetails(), arguments: [itemdata, index]),
        },
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      boxShadow: [
                        BoxShadow(
                            // color: Colors.grey[400]!,
                            color: Appthem().shadow,
                            // color: Colors.grey[900]!,
                            blurRadius: 10,
                            spreadRadius: 3,
                            offset: Offset(0, 0))
                      ]),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.r),
                    child: Image.asset(
                      '${itemdata.imagePath}.jpg',
                      height: 224.h,
                      ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                      height: 100.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.r),
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.black,
                              ]))),
                ),
                Positioned(
                    bottom: 15.w,
                    left: 15.w,
                    child: Text(
                      itemdata.destination,
                      style: TextStyle(
                          color: Colors.grey[100],
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w500),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ShimmerDestination extends StatelessWidget {
  final double width;
  final double hight;
  const ShimmerDestination.rectangluar({
    this.width=double.infinity,
    required this.hight
  });
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Shimmer.fromColors(
      baseColor: Appthem().formbackcolor,
      highlightColor: Colors.grey[200]!,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16.w,vertical: 16.h),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),),
          width: width,
          height: hight,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(16.r),
                    ),
              ),
              Positioned(
                bottom: 15.w, left: 15.w, child: 
                Container(
                  height: 50.h,
                color: Colors.grey[400],
              )
              )
            ],
          ),
        ),
      ),
    );
  }
}
