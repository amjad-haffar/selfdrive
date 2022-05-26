import 'package:flutter/material.dart';

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
