import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wings/features/Controllers/DestList.dart';
import 'package:wings/features/Views/Destination/desDetails.dart';

import 'package:wings/utils/components/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
Widget addVerBox(double x) {
  return SizedBox(
    height: x,
  );
}

Widget addhorBox(double x) {
  return SizedBox(
    width: x,
  );
}
// icons
class Borderbox extends StatelessWidget {
  const Borderbox({Key? key, @required this.child, this.width, this.hight})
      : super(key: key);
  final Widget? child;
  final double? width, hight;
  static EdgeInsets padding = const EdgeInsets.all(8.0);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: hight,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black38, width: 2),
      ),
      padding: padding,
      child: Center(child: child,),
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
                    borderRadius: BorderRadius.circular(20.r), color: cont.selected[index] ? Appthem().primarycolor:Appthem().formbackcolor),
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
      margin: EdgeInsets.symmetric(vertical: 10.h,horizontal: 15.w),
      padding: EdgeInsets.all(10.w),
      child: Column(
        children: [
          Stack(
            children: [
              InkWell(
                onTap: () => {
                  Get.to(() => DestDetails(), arguments: [itemdata,index]),
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
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    
                         height: 100.h,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(16.r),
                      gradient: LinearGradient(
                        begin:  Alignment.topCenter,
                        end : Alignment.bottomCenter,
                        colors: [
                          
                          Colors.transparent,
                          Colors.black,
                        ]
                    )
                    )
                    ),
                ),  
              Positioned(
                  bottom: 15.w,
                  left: 15.w,
                  child: Text(
                    "${itemdata["name"]}",
                    style: TextStyle(
                        color: Colors.grey[100],
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w500
                        ),
                  )),
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

