// ignore_for_file: sort_child_properties_last, prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:cv_task_2/models/infoTextField.dart';
import 'package:flutter/material.dart';

InfoTextField infoTextField = InfoTextField(textHint: '');

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  String fullName = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 130.0),
          child: Center(
            child: CircleAvatar(
              radius: 60,
              child: Text(
                'CV',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w300),
              ),
              backgroundColor: Colors.blue,
            ),
          ),
        ),
        Expanded(
          child: ClipPath(
            // clipper: ,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Colors.blue,
              ),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      infoTitle('Full Name'),
                      SizedBox(height: 5),
                      InfoTextField(
                        textHint: 'Your Name',
                      ),
                      Text(infoTextField.inputtedText),
                      SizedBox(height: 10),
                      infoTitle('Slack Handle'),
                      SizedBox(height: 5),
                      InfoTextField(textHint: 'Your Slack Handle'),
                      SizedBox(height: 10),
                      infoTitle('Github Handle'),
                      SizedBox(height: 5),
                      InfoTextField(textHint: 'Your Github Handle'),
                      SizedBox(height: 10),
                      infoTitle('About Me'),
                      SizedBox(height: 5),
                      AboutMeTextField(textHint: 'Your Biography')
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

Text infoTitle(String titleText) {
  return Text(
    titleText,
    style: TextStyle(
        color: const Color.fromARGB(255, 184, 221, 238),
        fontWeight: FontWeight.w700,
        fontSize: 15),
  );
}
