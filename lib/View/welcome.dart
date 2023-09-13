import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:giff_off/Utils/appImage.dart';
import 'package:giff_off/View/Register_Page.dart';
import 'package:giff_off/Widget/appText.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 147.h,
            ),
            AppText(
              data: "Welcome to Giff Off",
              color: Color(0xff000000),
              fontSize: 30.sp,
              fontWeight: FontWeight.w700,
            ),
            Stack(
              children: [
                Container(
                  height: 280.h,
                  width: 428.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/Group3.png"),
                          fit: BoxFit.fill)),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 123.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 74, right: 65),
                      child: Container(
                        height: 77.h,
                        width: 289.w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/logo.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 288.h,
                    ),
                    Container(
                      height: 66,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 214.w),
                                child: AppText(
                                  data: "Let's Rock",
                                  color: Color(
                                    0xff000000,
                                  ),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24.sp,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 214.w),
                                child: AppText(
                                  data: "Sign in now",
                                  color: Colors.black,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 31.w,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Register_page()));
                            },
                            child: Container(
                              padding: EdgeInsets.all(8),
                              width: 80.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    AppImages.elips2,
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Center(child: Icon(Icons.arrow_forward)),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
