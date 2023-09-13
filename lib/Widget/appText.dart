import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  String data;
  double? fontSize;
  FontWeight? fontWeight;
  Color color;
  String? fontFamily;

  AppText(
      {super.key,
      required this.data,
      required this.color,
      this.fontFamily,
      this.fontSize,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
          fontFamily: fontFamily),
    );
  }
}
