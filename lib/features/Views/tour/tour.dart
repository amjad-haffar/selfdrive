import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:wings/utils/components/constants.dart';
import 'package:wings/utils/components/selectcar.dart';
class TourPage extends StatelessWidget {
  const TourPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 12.w),
                  child: Text("Your Best Rout: ",
                  style: themeData.textTheme.headline1),
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context,index) => 
                    SelectCard(index: index,)
                  ),
                )
            ],),
            Positioned(
              width: ScreenUtil().screenWidth,
              bottom: 0,
              child: Container(
                height: 60.h,
                width: 80.w,
                decoration: BoxDecoration(
                  color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 12.w),
                  child: Row(
                    children: [
                      Text("Tour Price: ",
                      style: themeData.textTheme.headline1),
                      Text("\$500",
                      style: TextStyle(
                    fontSize: 24.sp,
                    color: Appthem().primarycolor,
                    fontWeight: FontWeight.bold,
            ),),  
                    ],
                  ),
                ),
                     Container(
                       height: 50.h,
                       width: 100.w,
                       decoration: BoxDecoration(
                         color: Colors.green[800]
                         ,
                         borderRadius: BorderRadius.circular(16.r)
                       ),
                       child: Center(child: Text("Start !",style:TextStyle(color: Colors.white,fontSize: 24.sp),))),
                  ],
                ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}