import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wings/utils/components/constants.dart';
import 'package:wings/utils/components/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:wings/features/Controllers/DestList.dart';
class DestDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  dynamic data = Get.arguments[0];
  int index = Get.arguments[1];
  final DestListCrtl cont = Get.put(DestListCrtl());
    final ThemeData themeData = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Color(0xff),
        //   leading: IconButton(
        //     icon: Icon(Icons.arrow_back, color: Colors.white),
        //     onPressed: () => Get.back(),
        //   ),
        // ),
        body: Container(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16.r),
                          bottomRight: Radius.circular(16.r)),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16.r),
                          bottomRight: Radius.circular(16.r)),
                      child: Image.asset(
                        data["image"],
                      ),
                    ),
                  ),
                  // Container(
                  //   decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(25.r)),
                  //   child: Image.asset(data["image"]),
                  //   ),
                  addVerBox(20.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(
                          data["name"],
                          style: themeData.textTheme.headline1,
                        ),
                        addVerBox(12.h),
                        Row(
                          children: [
                            Text("Rating: ",style: themeData.textTheme.headline3,),
                            RatingBar.builder(
                              unratedColor: Colors.grey[400],
                              itemSize: 25.r,
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              
                              // allowHalfRating: true,
                              itemCount: 5,
                              
                              // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
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
                        addVerBox(12.h),
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
                            Text(" old damascus/Bab Tomah",
                                style: themeData.textTheme.bodyText2),
                          ],
                        ),
                        addVerBox(12.h),
                        Text(
                          "Desciption: ",
                          style: themeData.textTheme.headline3,
                        ),
                        addVerBox(12.h),
                        Text(
                          "this is the desciption for this location this is the desciption for this location",
                          style: themeData.textTheme.bodyText2,
                        ),
                      ],
                    ),

                    // Positioned(
                    //   bottom: 20,
                    //   width: ScreenUtil().screenWidth,
                    //   left: 15.w,
                    //   child:Row(children: [
                    //     Text("200\$")
                    // ],
                    // ),
                    // )
                    //   ]
                    // ),
                  )
                ],
              ),
              Positioned(
                bottom: 0.h,
                width: ScreenUtil().screenWidth,
                // left: 15.w,
                child: Container(
                  child: Padding(
                    padding:  EdgeInsets.only(bottom: 16.h,top: 12.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "200\$",
                          style: TextStyle(fontSize: 24.sp,color: Colors.black87,fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          onTap: () => {
                            cont.togglebool()
                          },
                          child: Obx(()=>
                            Container(
                              width: 120.w,
                              decoration: BoxDecoration(
                                  color: cont.togglesecet.value?Colors.black: Appthem().primarycolor,
                                  borderRadius: BorderRadius.circular(16.r)),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 12.h, bottom: 12.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // Icon(
                                    //   Icons.add,
                                    //   color: Colors.white,
                                    // ),
                                    Text(
                                      cont.togglesecet.value? "Delete":"Add",
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
