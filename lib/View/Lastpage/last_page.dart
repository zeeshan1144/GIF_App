import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:giff_off/View/Lastpage/Component/last_pageComponent.dart';
import 'package:giff_off/Widget/appText.dart';
import 'package:giff_off/Widget/appbar.dart';

class Last_Page extends StatefulWidget {
  const Last_Page({super.key});

  @override
  State<Last_Page> createState() => _Last_PageState();
}

class _Last_PageState extends State<Last_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          children: [
            SizedBox(
              height: 40.h,
            ),
            AppText(
              data: "Find a New Game",
              color: Color(0xff000000),
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
            ),
            SizedBox(
              height: 31.h,
            ),
            Last_PageComponent(),

            //
            SizedBox(
              height: 15.h,
            ),
            //second main row
            Last_PageComponent()
          ],
        ),
      ),
    );
  }
}
