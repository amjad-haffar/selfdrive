import 'dart:ffi';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wings/core/immutable/utils/constants.dart';
import 'package:wings/core/immutable/utils/sampledata.dart';
import 'package:wings/core/immutable/utils/widgets.dart';
import 'package:wings/features/Controllers/DestList.dart';
import 'package:wings/features/Views/desDetails.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class DestinationsPage extends StatelessWidget {
  final DestListCrtl cont = Get.put(DestListCrtl());
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: GNav(
            // haptic: true, // haptic feedback
            tabBorderRadius: 25,
            // tabActiveBorder: Border.all(color: Colors.black, width: 1), // tab button border
            // tabBorder: Border.all(color: Colors.grey.shade100,), // tab button border
            // tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)], // tab button shadow
            curve: Curves.easeOutExpo, // tab animation curves
            duration: Duration(milliseconds: 400), // tab animation duration
            gap: 8, // the tab button gap between icon and text
            color: primarycolor, // unselected icon color
            activeColor: Colors.white, // selected icon and text color
            iconSize: 24, // tab button icon size
            backgroundColor: Colors.white,
            tabBackgroundColor: primarycolor,
            style: GnavStyle.google,
            padding: EdgeInsets.all(15),
            tabMargin: EdgeInsets.all(8),
            // navigation bar padding
            tabs: [
              GButton(
                icon: LineIcons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Likes',
              ),
              GButton(
                icon: Icons.location_pin,
                text: 'Search',
              ),
              GButton(
                icon: LineIcons.user,
                text: 'Profile',
              )
            ]),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    addVerBox(15.h),
                    Text("Select Destinations",
                        style: themeData.textTheme.headline1),
                    addVerBox(15.h),
                    Container(
                      height: 45.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          color: Colors.grey[200]),
                      child: TextFormField(
                        cursorColor: Colors.blue,
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.search),
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
                    addVerBox(15.h),
                    SingleChildScrollView(
                      child: Container(
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
                    ),
                    
                    //choices data change to list later
                    // cont.filters
                    //     .map((filter) => Choiceoption(
                    //           textdata: filter,
                    //         ))
                    //     .toList(),

                    // scrollDirection: Axis.vertical,
                    // child:
                    addVerBox(14.h),
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: DATA.length,
                        // shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Destiantionswidet(
                            itemdata: DATA[index],
                            index: index,
                            cont: cont,
                          );
                        },
                        // )
                      ),
                    ),
                  ],
                ),
                // Positioned(
                //     bottom: 20,
                //     width: ScreenUtil().screenWidth,
                //     child: Visibility(
                //       maintainAnimation: true,
                //       maintainState: true,
                //       visible: true,
                //       child: Center(
                //         child: Optionbutton(
                //           icon: Icons.map_rounded,
                //           text: "Create Tour",
                //           width: 180.w,
                //         ),
                //       ),
                //     )),
              ],
            )),
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

class Choiceoption extends StatelessWidget {
  const Choiceoption({Key? key, required this.textdata, required this.index, required this.cont})
      : super(key: key);
  final String textdata;
  final int index;
  final DestListCrtl cont;
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return  
      InkWell(
          onTap: () {
            cont.selectfilter(index);
          },
          child: 
            Obx(()=>
               Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r), color: cont.selected[index] ? primarycolor:Colors.grey[300]),
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 13.h),
                margin: EdgeInsets.only(left: 12.w),
                child: Text(
                  textdata,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color:  cont.selected[index]? Colors.white: Colors.black87,
                  ),
                ),
              ),
            ),
    );
  }
}

class Destiantionswidet extends StatelessWidget {
  const Destiantionswidet(
      {Key? key, this.itemdata, this.index, required this.cont})
      : super(key: key);
  final dynamic itemdata;
  final dynamic index;
  final DestListCrtl cont;
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      padding: EdgeInsets.all(10.w),
      child: Column(
        children: [
          Stack(
            children: [
              InkWell(
                onTap: () => {
                  Get.to(() => DestDetails(), arguments: itemdata),
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[400]!,
                            blurRadius: 10,
                            spreadRadius: 3,
                            offset: Offset(0,0))
                      ]),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.r),
                    child: Image.asset(
                      itemdata["image"],
                    ),
                  ),
                ),
              ),
              // Positioned(
              //   top: 15.w,
              //   right: 15.w,
              //   child:
              //       // Borderbox(
              //       //   hight: 45.h,
              //       //   width: 45.w,
              //       // child:
              //       InkWell(
              //     onTap: () => {},
              //     child: Container(
              //         decoration:
              //             BoxDecoration(shape: BoxShape.circle, boxShadow: [
              //           BoxShadow(
              //             color: Colors.black54,
              //             blurRadius: 10.0,
              //           ),
              //         ]),
              //         child: InkWell(
              //           onTap: () => {cont.selecting(index)},
              //           child: Container(
              //             decoration: BoxDecoration(
              //                 color: Colors.white,
              //                 borderRadius: BorderRadius.circular(25.r)),
              //             child: Obx(
              //               () => Icon(
              //                 cont.destselected.contains(index)
              //                     ? Icons.block
              //                     : Icons.check,
              //                 color: cont.destselected.contains(index)
              //                     ? Colors.red
              //                     : Colors.green,
              //                 size: 36.r,
              Positioned(
                  bottom: 15.w,
                  left: 15.w,
                  child: Text(
                    "${itemdata["name"]}",
                    style: TextStyle(
                        color: Colors.grey[100],
                        fontSize: 22.sp,
                        shadows: [
                          Shadow(
                            blurRadius: 10,
                          )
                        ]),
                  ))
            ],
          ),
          // Row(
          //   children: [
          //     Text(
          //       "${itemdata["name"]}",
          //       style: themeData.textTheme.bodyText2,
          //     )
          //   ],
          // ),
        ],
      ),
    );
  }
}

class Optionbutton extends StatelessWidget {
  const Optionbutton({Key? key, required this.text, required this.icon, this.width})
      : super(key: key);
  final String text;
  final IconData icon;
  final double? width;
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return InkWell(
      child: Container(
        width: width,
        decoration: BoxDecoration(
            color: Colors.black87, borderRadius: BorderRadius.circular(50.r)),
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            addhorBox(10.w),
            Text(
              text,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      onTap: () {},
    );
  }
}
