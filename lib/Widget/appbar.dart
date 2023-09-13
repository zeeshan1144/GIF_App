import 'package:flutter/material.dart';

import 'package:giff_off/View/Dasboard/dashboard.dart';
import 'package:giff_off/Widget/appText.dart';

PreferredSizeWidget MyAppbar() {
  return AppBar(
    leading: IconButton(
        color: Color(0xffFFFFFF), onPressed: () {}, icon: Icon(Icons.home)),
    centerTitle: true,
    backgroundColor: Color(0xffF8B700),
    title: AppText(
      data: "Giff Off",
      color: Color(0xffFFFFFF),
      fontSize: 20,
      fontWeight: FontWeight.w400,
    ),
  );
}
