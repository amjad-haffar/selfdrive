
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wings/utils/components/constants.dart';
import 'package:wings/utils/sampledata.dart';
import 'package:wings/utils/components/widgets.dart';
import 'package:wings/features/Controllers/DestList.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class DestinationsPage extends StatelessWidget {
  final DestListCrtl cont = Get.put(DestListCrtl());
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            addVerBox(15.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Text("Select Destinations",
                  style: themeData.textTheme.headline1),
            ),
            addVerBox(15.h),
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
                      suffixIcon: Icon(Icons.search,color: Appthem().primarycolor,),
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
            addVerBox(15.h),
            Container(
                height: 45.h,
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
            addVerBox(14.h),
            Container(
              height: 373.h,
              child: ListView.builder(
                physics: AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: DATA.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Destiantionswidet(
                      itemdata: DATA[index],
                      index: index,
                      cont: cont,
                    );
                  },
              ),
            ),
          ],
        ),
      ),
    );

    // FlutterMap(
    //   options: MapOptions(
    //     center: LatLng(51.5, -0.09),
    //     zoom: 13.0,
    //   ),
    //   layers: [
    //     TileLayerOptions(
    //       urlTemplate: "https://api.mapbox.com/styles/v1/amjadalhaffar/cl2pb7612000p14mfdkh2skty.html?title=view&access_token=pk.eyJ1IjoiYW1qYWRhbGhhZmZhciIsImEiOiJja2g2ZXpqd2IwbWJpMnlxdnRwZTRvcWswIn0.SH8v8H53WyTSskcPmzDh0w&zoomwheel=true&fresh=true#9.33/40.7139/-73.9909",
    //       additionalOptions: {
    //         'accessToken':'pk.eyJ1IjoiYW1qYWRhbGhhZmZhciIsImEiOiJja2g2ZXpqd2IwbWJpMnlxdnRwZTRvcWswIn0.SH8v8H53WyTSskcPmzDh0w',
    //         'id':'mapbox.mapbox-streets-v8'
    //       },
    //       subdomains: ['a', 'b', 'c'],
    //       attributionBuilder: (_) {
    //         return Text("© OpenStreetMap contributors");
    //       },
    //     ),
    //     // MarkerLayerOptions(
    //     //   markers: [
    //     //     Marker(
    //     //       width: 80.0,
    //     //       height: 80.0,
    //     //       point: LatLng(51.5, -0.09),
    //     //       builder: (ctx) => Container(
    //     //         child: FlutterLogo(),
    //     //       ),
    //     //     ),
    //     //   ],
    //     // ),
    //   ],
    // );
  }
}

