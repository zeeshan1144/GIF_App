import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:giff_off/View/Dasboard/dashboard.dart';
import 'package:giff_off/Widget/appText.dart';
import 'package:giff_off/Widget/appTextFormField.dart';
import 'package:giff_off/Widget/appbar.dart';
import 'package:giff_off/Widget/mybutton.dart';
import 'package:image_picker/image_picker.dart';

class Profile_Page extends StatefulWidget {
  const Profile_Page({super.key});

  @override
  State<Profile_Page> createState() => _Profile_PageState();
}

class _Profile_PageState extends State<Profile_Page> {
  File? finalimage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.w),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.h,
              ),
              AppText(
                data: "Settings",
                color: Color(0xff000000),
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                height: 130.h,
                width: 358.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(left: 20.w, top: 20.h, bottom: 20.h),
                      child: CupertinoButton(
                        onPressed: () async {
                          XFile? selectedImage = await ImagePicker()
                              .pickImage(source: ImageSource.gallery);
                          if (selectedImage != null) {
                            File convertedfile = File(selectedImage.path);
                            setState(() {
                              finalimage = convertedfile;
                            });
                          } else {
                            Fluttertoast.showToast(
                                msg: "Please Select your Images",
                                fontSize: 15,
                                backgroundColor: Colors.red);
                          }
                        },
                        child: CircleAvatar(
                            backgroundImage: (finalimage != null)
                                ? FileImage(finalimage!)
                                : null),
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 15.w,
                        ),
                        AppText(
                          data: "Profile Picture",
                          color: Colors.black,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        AppText(
                          data: "Upload Your Profile Picture",
                          color: Color.fromARGB(255, 205, 183, 183),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              AppText(
                data: "Email",
                color: Color(0xff000000),
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
                  hintText: "Enter Your Email",
                  hintStyle:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              //username
              AppText(
                data: "Username",
                color: Color(0xff000000),
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 16.h,
              ),
              //
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                width: 358.w,
                child: AppTextFormField(
                  hintText: "Enter Username",
                  hintStyle:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              //bio
              AppText(
                data: "Bio",
                color: Color(0xff000000),
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 16.h,
              ),
              //
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                width: 358.w,
                child: AppTextFormField(
                  maxline: 4,
                  hintText: "Enter Your Bio",
                  hintStyle:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
                ),
              ),

              SizedBox(
                height: 117.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 215),
                child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Dashboard()));
                    },
                    child: My_Button(
                      data: "Save",
                    )),
              ),
              SizedBox(
                height: 66.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
