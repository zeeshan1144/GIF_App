import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class Second_Button extends StatefulWidget {
  String data;
  Second_Button({super.key, required this.data});

  @override
  State<Second_Button> createState() => _Second_ButtonState();
}

class _Second_ButtonState extends State<Second_Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 147.w,
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(50)),
      child: Padding(
        padding: EdgeInsets.only(left: 34.w, right: 18.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.data,
              style: TextStyle(color: Colors.white, fontSize: 16.sp),
            ),
            SizedBox(
              width: 14.w,
            ),
            Icon(
              Icons.arrow_forward,
              color: Colors.white,
              size: 14.sp,
            )
          ],
        ),
      ),
    );
  }
}
