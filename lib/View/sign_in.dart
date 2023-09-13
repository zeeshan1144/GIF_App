import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:giff_off/View/Register_Page.dart';
import 'package:giff_off/View/Profile/profile_page.dart';

import 'package:giff_off/Widget/appText.dart';
import 'package:giff_off/Widget/appTextFormField.dart';
import 'package:giff_off/Widget/second_Button.dart';

class Sign_In extends StatefulWidget {
  const Sign_In({super.key});

  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 752.h,
            width: 428.w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/RectangleLogo.png"),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40.h,
                  ),
                  IconButton(
                      color: Color(0xffFFFFFF),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back)),
                  SizedBox(
                    height: 40.h,
                  ),
                  AppText(
                    data: "Sign In",
                    color: Colors.white,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  AppText(
                    data: "Sign up to Continue",
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  //
                  SizedBox(
                    height: 64.h,
                  ),

                  AppText(
                    data: "Enter Email",
                    color: Color(0xffFFFFFF),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 50.h,
                    width: 358.w,
                    child: AppTextFormField(
                      prefix: Icon(Icons.email),
                      hintText: "Email",
                      border: const OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  AppText(
                    data: "Enter password",
                    color: Color(0xffFFFFFF),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Container(
                    height: 50.h,
                    width: 358.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: AppTextFormField(
                      prefix: Icon(Icons.password),
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),

                  SizedBox(
                    height: 70.h,
                  ),

                  //button
                  Padding(
                    padding: const EdgeInsets.only(left: 180),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Profile_Page()));
                        },
                        child: Second_Button(
                          data: "Sign in",
                        )),
                  ),
                  SizedBox(
                    height: 186.h,
                  ),
                  //
                  Row(
                    children: [
                      AppText(
                        data: "Already have an account",
                        color: Color(0xff000000),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Register_page()));
                          },
                          child: AppText(
                              data: "Sign Up", color: Color(0xffF8B700)))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
