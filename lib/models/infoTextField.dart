// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class InfoTextField extends StatelessWidget {
  InfoTextField({required this.controller});

  final TextEditingController controller;
  // String inputtedText = 'ola';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xff37a1f4),
      ),
      child: TextField(
        controller: controller,
        cursorColor: Color(0xFFA0D7F1),
        textAlign: TextAlign.left,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w300, fontSize: 14),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(10, 14, 5, 13),
          border: InputBorder.none,
          fillColor: Color(0xff37a1f4),
          prefixIcon: Padding(
            padding: EdgeInsets.only(
              right: 2,
              left: 8,
              top: 3,
            ),
            child: Icon(
              Icons.edit,
              color: Color(0xFFA0D7F1),
              size: 12,
            ),
          ),
          prefixIconConstraints: BoxConstraints(maxHeight: 20, maxWidth: 40),
          prefixIconColor: Color(0xFF525559),
        ),
      ),
    );
  }
}

class AboutMeTextField extends StatelessWidget {
  AboutMeTextField({required this.controller});

  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Color(0xff37a1f4)),
      child: TextField(
        controller: controller,
        maxLines: null,
        cursorColor: Color(0xFFA0D7F1),
        textAlign: TextAlign.left,
        style: TextStyle(
            wordSpacing: -1,
            color: Colors.white,
            inherit: true,
            fontWeight: FontWeight.w300,
            fontSize: 14),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(10, 5, 5, 13),
          border: InputBorder.none,
          fillColor: Color(0xff37a1f4),
          prefixIcon: Padding(
            padding: EdgeInsets.only(
              right: 2,
              left: 8,
              bottom: 6,
            ),
            child: Icon(
              Icons.edit,
              color: Color(0xFFA0D7F1),
              size: 12,
            ),
          ),
          prefixIconConstraints: BoxConstraints(maxHeight: 20, maxWidth: 40),
          prefixIconColor: Color(0xFF525559),
        ),
      ),
    );
  }
}
