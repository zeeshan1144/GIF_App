import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';


class submitt_component extends StatelessWidget {
  String data;
  String data1;

  submitt_component({super.key, required this.data, required this.data1});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xffF8B700), borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 17, left: 27, right: 26),
            child: Text(
              data,
              style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            height: 11.h,
          ),
          //
          Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 17),
            child: Text(
              data1,
              style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            height: 11.h,
          )
        ],
      ),
    );
  }
}
