import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:giff_off/View/Submitt/Component/submitt_page_component.dart';
import 'package:giff_off/View/round_page.dart';
import 'package:giff_off/Widget/appText.dart';
import 'package:giff_off/Widget/appTextFormField.dart';
import 'package:giff_off/Widget/appbar.dart';
import 'package:giff_off/Widget/mybutton.dart';

class Submit_Game extends StatefulWidget {
  const Submit_Game({super.key});

  @override
  State<Submit_Game> createState() => _Submit_GameState();
}

class _Submit_GameState extends State<Submit_Game> {
  List gridviewdata = [
    "Night Life",
    "Food & Drink",
    "SOS",
    "FML",
    "Failing",
    "On The Job",
    "Health",
    "Releative"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(),
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
              Row(
                children: [
                  submitt_component(
                    data: "1/4",
                    data1: "Rounds",
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  submitt_component(
                    data: "56s",
                    data1: "Left",
                  ),
                ],
              ),

              SizedBox(
                height: 25.h,
              ),
              AppText(
                data: "Waiting for Category...",
                color: Color(0xff000000),
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
              ),

              SizedBox(
                height: 20.h,
              ),
              //gridview.builder

              SizedBox(
                height: 358.h,
                child: GridView.builder(
                    itemCount: gridviewdata.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 2,
                        mainAxisSpacing: 2,
                        mainAxisExtent: 60,
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: 157.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffF7F6F9)),
                            child: Center(
                                child: AppText(
                                    data: gridviewdata[index],
                                    color: Colors.black))),
                      );
                    }),
              ),

              SizedBox(
                height: 50.h,
              ),
              //button
              Padding(
                padding: const EdgeInsets.only(left: 215),
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Round_page()));
                    },
                    child: My_Button(
                      data: "Submitt",
                    )),
              ),

              //textformfiled

              SizedBox(
                height: 84.h,
              ),
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
                  suffix: Image.asset(
                    "assets/Send.png",
                    height: 28.h,
                    width: 28.w,
                  ),
                ),
              ),

              //sizebox

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
