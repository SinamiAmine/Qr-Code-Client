import 'package:flutter/material.dart';
import 'package:food_app/theme/color.dart';

class CustomTextBox extends StatelessWidget {
  CustomTextBox({ Key? key, this.hint = "", this.prefix, this.suffix, this.controller, required this.onChange}) : super(key: key);
  final String hint;
  final Widget? prefix;
  final Function(String) onChange;
  final Widget? suffix;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(bottom: 3),
        height: 44,
        decoration: BoxDecoration(
          color: textBoxColor,
          border: Border.all(color: textBoxColor),
          borderRadius: BorderRadius.circular(10)
        ),
        child: TextFormField(
          onChanged: onChange,
          controller: controller,
          decoration: InputDecoration(
            prefixIcon: prefix,
            suffixIcon: suffix,
            border: InputBorder.none,
            hintText: hint,
            hintStyle: TextStyle(color: darker, fontSize: 15)),
        ),
      );
  }
}
