import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:giff_off/View/Complete/complete_roundpage.dart';
import 'package:giff_off/Widget/appText.dart';
import 'package:giff_off/Widget/appTextFormField.dart';
import 'package:giff_off/Widget/appbar.dart';

class Round_page extends StatefulWidget {
  const Round_page({super.key});

  @override
  State<Round_page> createState() => _Round_pageState();
}

class _Round_pageState extends State<Round_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(),
      body: Container(
        color: Color(0xffF7F6F9),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  children: [
                    AppText(
                      data: "Chicken Winner",
                      color: Color(0xff000000),
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    //sizebox
                    SizedBox(
                      width: 73.w,
                    ),
                    AppText(
                      data: "Round(1/4)",
                      color: Color(0xff000000),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
                SizedBox(
                  height: 31.h,
                ),
                //
                AppText(
                  data: "On The Job",
                  color: Color(0xff000000),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(
                  height: 31.h,
                ),
                AppText(
                  data: "Here is the Clue",
                  color: Color(0xff000000),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Cerebri Sans Pro",
                ),
                SizedBox(
                  height: 20.h,
                ),

                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Complete_Round()));
                  },
                  child: Container(
                    height: 60.h,
                    width: 358.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: AppText(
                            data: "Loream Iplsum is the dummy text.",
                            color: Colors.black.withOpacity(0.7))),
                  ),
                ),
                SizedBox(
                  height: 507.h,
                ),
                //textformfiled

                Container(
                  height: 50.h,
                  width: 358.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffFFFFFF)),
                  child: AppTextFormField(
                    hintText: "Type your Message Here",
                    hintStyle:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
                    suffix: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Complete_Round()));
                      },
                      child: Image.asset(
                        "assets/Send.png",
                        height: 28.h,
                        width: 28.w,
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 40.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
