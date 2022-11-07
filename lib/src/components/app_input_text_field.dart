import 'package:distr_test/src/styles.dart';
import 'package:flutter/material.dart';

class AppInputTextField extends StatefulWidget {
  // final
  const AppInputTextField({super.key});

  @override
  State<AppInputTextField> createState() => _AppInputTextFieldState();
}

class _AppInputTextFieldState extends State<AppInputTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: double.infinity,
      margin:const EdgeInsets.all(10),
      padding:const EdgeInsets.symmetric(
        horizontal: 18,
      ),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: Color(0xffFAFDFD),
        border: Border.all(
          color: Color(0xffD2D7D7),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        cursorHeight: 19,
        cursorWidth: 0.2,
        cursorColor: Colors.black,
        style: inputTextStyle(color: Color(0xff424F4F)),
        decoration: InputDecoration(
          enabled: true,
          isDense: true,
          hintText: "hint",
          hintStyle: hintTextStyle(color: Color(0xffD2D7D7)),
          border: InputBorder.none,
          contentPadding: EdgeInsets.zero,
        ),
      ),
    );
  }
}
