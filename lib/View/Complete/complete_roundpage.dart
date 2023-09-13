import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:giff_off/View/Complete/Component/complete_roundComponenet.dart';
import 'package:giff_off/View/Lastpage/last_page.dart';
import 'package:giff_off/Widget/appText.dart';
import 'package:giff_off/Widget/appTextFormField.dart';
import 'package:giff_off/Widget/mybutton.dart';

class Complete_Round extends StatefulWidget {
  const Complete_Round({super.key});

  @override
  State<Complete_Round> createState() => _Complete_RoundState();
}

class _Complete_RoundState extends State<Complete_Round> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: SingleChildScrollView(
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
                  Complete_RoundComponent(
                    data: "1/4",
                    data1: "Round",
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Complete_RoundComponent(
                    data: "56s",
                    data1: "Left",
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              //
              Container(
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
              //sizebox

              SizedBox(
                height: 25.h,
              ),
              AppText(
                data: "Waiting for Submission",
                color: Color(0xff000000),
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 20.h,
              ),

              //textformfiled
              Container(
                height: 60.h,
                width: 358.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffFFFFFF)),
                child: AppTextFormField(
                  hintText: "Search for a Gif",
                  hintStyle:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
                  suffix:
                      IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                ),
              ),
              //sizebox
              SizedBox(
                height: 20.h,
              ),
              //row
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 130.h,
                      width: 130.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        "assets/c1.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    //
                    Container(
                      height: 130.h,
                      width: 130.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        "assets/c2.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    //3
                    Container(
                      height: 130.h,
                      width: 130.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        "assets/c3.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 50.h,
              ),

              //Button
              Padding(
                padding: const EdgeInsets.only(left: 215),
                child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Last_Page()));
                    },
                    child: My_Button(
                      data: "Submit",
                    )),
              ),
              //
              SizedBox(
                height: 94.h,
              ),

              //textfomrmfiled
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
