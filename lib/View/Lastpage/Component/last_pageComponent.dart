import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:giff_off/Widget/appText.dart';
import 'package:giff_off/Widget/mybutton.dart';

class Last_PageComponent extends StatelessWidget {
  const Last_PageComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return //
        Container(
            width: 358.w,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 20, bottom: 20),
              child: Row(
                children: [
                  //text data
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        data: "Hump Day",
                        color: Color(0xff000000),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      //
                      AppText(
                        data: "Thor",
                        color: Color(0xff000000),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 125.w,
                  ),
                  //botton
                  InkWell(
                      onTap: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => Round_page()));
                      },
                      child: My_Button(
                        data: "Join",
                      )),
                ],
              ),
            ));
  }
}
