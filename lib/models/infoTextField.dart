// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';

class InfoTextField extends StatelessWidget {
  InfoTextField({required this.textHint});

  late String textHint;
  String inputtedText = 'ola';
  final infoTextContoller = TextEditingController();
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
        controller: infoTextContoller,
        onSubmitted: (value) {
          inputtedText = value;
          print(inputtedText);
        },
        cursorColor: Color(0xFFA0D7F1),
        textAlign: TextAlign.left,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w300, fontSize: 14),
        decoration: InputDecoration(
          hintText: textHint,
          hintStyle: TextStyle(
              fontSize: 12,
              color: Color.fromARGB(255, 160, 215, 241),
              fontWeight: FontWeight.w300),
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
  AboutMeTextField({required this.textHint});

  late String textHint;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Color(0xff37a1f4)),
      child: TextField(
        cursorColor: Color(0xFFA0D7F1),
        textAlign: TextAlign.left,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w300, fontSize: 14),
        decoration: InputDecoration(
          hintText: textHint,
          hintStyle: TextStyle(
              fontSize: 12,
              color: Color.fromARGB(255, 160, 215, 241),
              fontWeight: FontWeight.w300),
          contentPadding: EdgeInsets.fromLTRB(10, 0, 5, 13),
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
