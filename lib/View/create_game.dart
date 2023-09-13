import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:giff_off/View/Dasboard/dashboard.dart';
import 'package:giff_off/View/StartGame/start_game.dart';
import 'package:giff_off/Widget/appText.dart';
import 'package:giff_off/Widget/appTextFormField.dart';
import 'package:giff_off/Widget/appbar.dart';
import 'package:giff_off/Widget/mybutton.dart';

class Create_Game extends StatefulWidget {
  const Create_Game({super.key});

  @override
  State<Create_Game> createState() => _Create_GameState();
}

class _Create_GameState extends State<Create_Game> {
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
                data: "Create a Game",
                color: Color(0xff000000),
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
              ),

              SizedBox(
                height: 31.h,
              ),
              AppText(
                data: "Enter Game Name",
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
                  hintText: "Game Name",
                  hintStyle:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              //username
              AppText(
                data: "Players",
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
                  hintText: "Choose Number of Player",
                  hintStyle:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              //bio
              AppText(
                data: "Round",
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
                  hintText: "Choose Number of Rounds",
                  hintStyle:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
                ),
              ),

              //party
              SizedBox(
                height: 20.h,
              ),
              AppText(
                data: "Party",
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
                  hintText: "Choose Party",
                  hintStyle:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
                ),
              ),

              SizedBox(
                height: 70.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 215),
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Start_Game()));
                    },
                    child: My_Button(
                      data: "Play On",
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
