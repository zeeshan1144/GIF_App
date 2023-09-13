import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:giff_off/Utils/appImage.dart';
import 'package:giff_off/View/Dasboard/Component/dashbord_pageComponent.dart';

import 'package:giff_off/View/create_game.dart';
import 'package:giff_off/Widget/appText.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/back.png"), fit: BoxFit.fill)),
          ),

          //
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 94.w,
                  right: 94.w,
                  top: 182.h,
                ),
                child: Image.asset(
                  "assets/logo.png",
                  height: 77.h,
                  width: 289.w,
                ),
              ),

              //sizebox

              SizedBox(
                height: 152.h,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 59),
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Create_Game()));
                    },
                    child: Dashbordpage_component(
                      color: Color(0xffF8B700),
                      data: "Start The Fun",
                      textStyle: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    )),
              ),
              //
              SizedBox(
                height: 25.h,
              ),
              //
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 59),
                child: Dashbordpage_component(
                    color: Colors.white,
                    data: "Join The Fun",
                    textStyle: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w700,
                    )),
              ),
              //
              SizedBox(
                height: 25.h,
              ),
              //
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 59),
                child: Dashbordpage_component(
                    color: Colors.white,
                    data: "My Peeps",
                    textStyle: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w700,
                    )),
              ),
              //
              SizedBox(
                height: 25.h,
              ),
              //
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 59),
                child: Dashbordpage_component(
                    color: Colors.white,
                    data: "Exuse Me",
                    textStyle: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w700,
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
