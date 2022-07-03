import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wings/Controllers/tour.dart';
import 'package:wings/Models/Destinations.dart';
import 'package:wings/utils/constants.dart';
import 'package:wings/utils/components/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class DestDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Destinations data = Get.arguments[0];
    final ThemeData themeData = Theme.of(context);
    final TourCont tour = Get.find();
    tour.search(data);
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 14.h),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.r)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.r),
                        child: Image.asset(
                          "${data.imagePath}.jpg",
                        ),
                      ),
                    ),
                  ),
                  Appthem().addVerBox(20.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.destination,
                          style: themeData.textTheme.headline1,
                        ),
                        Appthem().addVerBox(12.h),
                        Row(
                          children: [
                            Text(
                              "Rating: ",
                              style: themeData.textTheme.headline3,
                            ),
                            RatingBar.builder(
                              unratedColor: Colors.grey[400],
                              itemSize: 25.r,
                              initialRating: data.averageRate.toDouble(),
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                          ],
                        ),
                        Appthem().addVerBox(12.h),
                        Row(
                          children: [
                            Text(
                              "Location",
                              style: themeData.textTheme.headline2,
                            ),
                            Icon(
                              Icons.location_pin,
                              color: Colors.blue[900],
                            ),
                            Text(data.district,
                                style: themeData.textTheme.bodyText2),
                          ],
                        ),
                        Appthem().addVerBox(12.h),
                        Text(
                          "Desciption: ",
                          style: themeData.textTheme.headline3,
                        ),
                        Appthem().addVerBox(12.h),
                        Text(
                          data.description,
                          style: themeData.textTheme.bodyText2,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Positioned(
                bottom: 0.h,
                width: ScreenUtil().screenWidth,
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 16.h, top: 12.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "200\$",
                          style: TextStyle(
                              fontSize: 24.sp,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold),
                        ),
                        Obx(
                          () => InkWell(
                            onTap: () => {
                              // tour.deleteAdd(data.id)
                              tour.deleteAdd(data)
                              // TourCont().deleteAdd(data.id)
                            },
                            child: Container(
                              width: 120.w,
                              decoration: BoxDecoration(
                                  // color: TourCont().search(data.id).value
                                  color: tour.toggle.value
                                      ? Colors.black
                                      : Appthem().primarycolor,
                                  borderRadius: BorderRadius.circular(16.r)),
                              child: Padding(
                                padding:
                                    EdgeInsets.only(top: 12.h, bottom: 12.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                        tour.toggle.value
                                            ? "Delete"
                                            : "Add",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.sp,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
