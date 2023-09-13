import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:giff_off/View/sign_in.dart';

import 'package:giff_off/Widget/appText.dart';
import 'package:giff_off/Widget/appTextFormField.dart';
import 'package:giff_off/Widget/second_Button.dart';

class Register_page extends StatefulWidget {
  const Register_page({super.key});

  @override
  State<Register_page> createState() => _Register_pageState();
}

class _Register_pageState extends State<Register_page> {
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
                    data: "Create Account",
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
                    width: 358.w,
                    child: AppTextFormField(
                      prefix: Icon(Icons.email),
                      hintText: "Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
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
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 358.w,
                    child: AppTextFormField(
                      prefix: Icon(Icons.password),
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),

                  AppText(
                    data: "Confirm  Password",
                    color: Color(0xffFFFFFF),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    width: 358.w,
                    child: AppTextFormField(
                      prefix: Icon(Icons.password),
                      hintText: " Confirm Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),

                  SizedBox(
                    height: 70.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 180),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Sign_In()));
                        },
                        child: Second_Button(
                          data: "Sign Up",
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
                                    builder: (context) => Sign_In()));
                          },
                          child: AppText(
                              data: "Sign in", color: Color(0xffF8B700)))
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
