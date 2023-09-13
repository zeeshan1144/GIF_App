import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:giff_off/View/StartGame/Components/start_game_Component.dart';
import 'package:giff_off/View/Submitt/submitt_game.dart';
import 'package:giff_off/Widget/appText.dart';
import 'package:giff_off/Widget/appbar.dart';
import 'package:giff_off/Widget/mybutton.dart';

class Start_Game extends StatefulWidget {
  const Start_Game({super.key});

  @override
  State<Start_Game> createState() => _Start_GameState();
}

class _Start_GameState extends State<Start_Game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(),
      body: Container(
        color: Color(0xffF7F6F9),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.h,
              ),
              AppText(
                data: "Chicken Winner",
                color: Color(0xff000000),
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(
                height: 31.h,
              ),
              //
              Row(
                children: [
                  start_gameComponent(
                    data: "2/3",
                    data1: "Players",
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  start_gameComponent(
                    data: "4m",
                    data1: "Rounds",
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  start_gameComponent(
                    data: "1m",
                    data1: "Time",
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              //second Row
              Row(
                children: [
                  AppText(
                    data: "Waiting for Players...",
                    color: Color(0xff000000),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    width: 144.w,
                  ),
                  AppText(
                    data: "(2/3)",
                    color: Color(0xff000000),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 60.h,
                      width: 169.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/Rectangle.png"),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          AppText(
                            data: "Nouman",
                            color: Color(0xff000000),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                          ),

                          //
                        ],
                      ),
                    ),
                    Container(
                      height: 60.h,
                      width: 169.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/Rectangle.png"),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          AppText(
                            data: "Monazir",
                            color: Color(0xff000000),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                          )
                        ],
                      ),
                    ),
                    //
                  ],
                ),
              ),

              SizedBox(
                height: 100.h,
              ),
              //play button
              Padding(
                padding: const EdgeInsets.only(left: 215),
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Submit_Game()));
                    },
                    child: My_Button(
                      data: "Start",
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
