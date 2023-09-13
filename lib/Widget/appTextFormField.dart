import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  Widget? prefix;
  String? hintText;
  InputBorder? border;
  TextStyle? hintStyle;
  int? maxline;
  Widget? suffix;

  AppTextFormField(
      {super.key,
      this.hintText,
      this.border,
      this.hintStyle,
      this.prefix,
      this.maxline,
      this.suffix});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxline,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(top: 16, bottom: 15, left: 15),
        prefixIcon: prefix,
        suffix: suffix,
        hintStyle: hintStyle,
        hintText: hintText,
        border: OutlineInputBorder(),
      ),
    );
  }
}
