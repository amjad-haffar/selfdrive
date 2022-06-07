import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:wings/utils/components/constants.dart';

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
      child: Container(
        height: 80.h,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            blurRadius: 6,
            color: Color(0xffdfdfdf),
            spreadRadius: 2,
          ),
        ],
        //  color: Color(0xfff3f3f3),
        color: Colors.white,
          borderRadius: BorderRadius.circular(12.r)),
        child: Stack(
          children: [
            Row(
              children: [
                Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 12.h, horizontal: 10.w),
                    child: Text(
                      "  ${index+1}  ",
                      style: TextStyle(
                        fontSize: 28.sp,
                        color: Appthem().primarycolor
                      ),
                    )
                    //  ClipRRect(
                    //   borderRadius: BorderRadius.circular(8.r),
                    //   child:
                    //   Image.asset(
                    //     "assets/images/1.jpg",
                    //     height: 100.h,
                    //     fit: BoxFit.cover,
                    //   ),
                    // ),
                    ),
                Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 12,
                    ),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Omayyad Mosque',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: themeData.textTheme.headline3),
                          Text(
                            'Price : \$100',
                            style: themeData.textTheme.bodyText2,
                          )
                        ],
                      ),
                    )),
              ],
            ),
            Positioned(
              right: 10,
              top: 25,
              child: Center(
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Icon(
                      Icons.close,
                      size: 35,
                      color: Colors.black54,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
