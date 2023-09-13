import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:giff_off/Widget/appText.dart';

class My_Button extends StatelessWidget {
  String data;

  My_Button({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 47.h,
      decoration: BoxDecoration(
          color: Color(0xff020101), borderRadius: BorderRadius.circular(50)),
      child: Center(
        child: Text(
          data,
          style: TextStyle(
            color: Color(0xffFFFFFF),
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
