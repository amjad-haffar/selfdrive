import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:wings/Controllers/DestList.dart';
import 'package:wings/Controllers/tour.dart';
import 'package:wings/utils/components/choiseoption.dart';
import 'package:wings/utils/components/destinationcard.dart';
import 'package:wings/utils/constants.dart';
import 'package:wings/utils/sampledata.dart';
import 'package:wings/utils/components/widgets.dart';
import 'package:line_icons/line_icons.dart';

class DestinationsPage extends StatelessWidget {
  final DestListCrtl cont = Get.put(DestListCrtl());
  final TourCont tour = Get.put(TourCont());
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Appthem().addVerBox(15.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Text("Select Destinations",
                  style: themeData.textTheme.headline1),
            ),
            Appthem().addVerBox(15.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Container(
                height: 45.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: Appthem().formbackcolor),
                child: TextFormField(
                  cursorColor: Colors.blue,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.search,
                        color: Appthem().primarycolor,
                      ),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          left: 15.w, bottom: 10.h, top: 14.h, right: 15.w),
                      hintText: "Search"),
                ),
              ),
            ),
            Appthem().addVerBox(15.h),
            Container(
              height: 40.h,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: cont.filters.length,
                  itemBuilder: (context, index) {
                    return Choiceoption(
                      textdata: cont.filters[index],
                      index: index,
                      cont: cont,
                    );
                  }),
            ),
            Appthem().addVerBox(14.h),
            Container(
              height: 373.h,
              child: GetBuilder<DestListCrtl>(
                builder: (_cont) => _cont.isLoading
                    ? buildSkelton()
                    : ListView.builder(
                        physics: AlwaysScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemCount: _cont.desList.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Destiantionswidet(
                            itemdata: _cont.desList[index],
                            index: index,
                            cont: cont,
                          );
                        },
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
Widget buildSkelton() {
  DestListCrtl cont = Get.put(DestListCrtl());
  return cont.state
      ? ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            ShimmerDestination.rectangluar(
              hight: 200.h,
            ),
            ShimmerDestination.rectangluar(
              hight: 200.h,
            ),
          ],
        )
      : Center(child: Column(
        children: [
          Appthem().addVerBox(40.h),
          Image.asset("assets/images/nodata.png",width: 200.w,),
          Padding(
            padding:  EdgeInsets.only(top: 16.h),
            child: Text("Sorry no results found :(",style:TextStyle(
              fontSize: 20.sp,
              color: Appthem().black,
              fontWeight: FontWeight.bold
            ),),
          ),
          
           
        ],
      ));
}
