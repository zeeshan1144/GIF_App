import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dashbordpage_component extends StatelessWidget {
  String data;
  TextStyle textStyle;
  Color? color;

  Dashbordpage_component(
      {super.key,
      required this.data,
      required this.textStyle,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 358.w,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
      child: Center(child: Text(data, style: textStyle)),
    );
  }
}
