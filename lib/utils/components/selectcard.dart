import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:get/get.dart';
import 'package:wings/Controllers/tour.dart';
import 'package:wings/Models/Destinations.dart';
import 'package:wings/utils/constants.dart';
import 'package:wings/utils/components/widgets.dart';

class SelectCard extends StatelessWidget {
  SelectCard({
    Key? key,
    // required this.index,
    required this.dest,
  }) : super(key: key);
  // final int index;
  final Destinations dest;
  @override
  Widget build(BuildContext context) {
    final TourCont tour = Get.find();
    final ThemeData themeData = Theme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
      child: Container(
        height: 70.h,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 6,
                color: Appthem().shadow,
                spreadRadius: 2,
              ),
            ],
            //  color: Color(0xfff3f3f3),
            color: Appthem().tourcard,
            borderRadius: BorderRadius.circular(12.r)),
        child: Row(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 10.w),
                child: Text(
                  "  ${dest.id}  ",
                  style:
                      TextStyle(fontSize: 28.sp, color: Appthem().primarycolor),
                )
                ),
            Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 12,
                ),
                child: Container(
                  width: 230.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(dest.destination,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
          fontSize: 18.sp,
          color: Appthem().black,
          fontWeight: FontWeight.bold,
        ),),
                      Appthem().addVerBox(8.h),
                      Text(
                        'Price : \$100',
                        // style: themeData.textTheme.bodyText2,
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                )),
            InkWell(
              onTap: () {
                print("tapped");
                tour.deleteAdd(dest);
              },
              child: Center(
                child: Container(
                    decoration: BoxDecoration(
                        color: Appthem().tourcard, shape: BoxShape.circle),
                    child: Icon(
                      Icons.close,
                      size: 33.r,
                      // color: Colors.black54,
                      color: Colors.red[800],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
