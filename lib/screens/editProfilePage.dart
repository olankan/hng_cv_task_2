// ignore_for_file: sort_child_properties_last, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cv_task_2/models/customClipperPath.dart';
import 'package:cv_task_2/models/infoTextField.dart';
import 'package:cv_task_2/models/screenToggles.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  final String fullName;
  final String slackHandle;
  final String githubHandle;
  final String aboutMe;

  const EditProfileScreen({
    required this.fullName,
    required this.slackHandle,
    required this.githubHandle,
    required this.aboutMe,
  });

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  Color activeColor = Colors.blue;
  Color inActiveColor = Color(0xFFA0D7F1);
  TextEditingController fullNameController = TextEditingController();
  TextEditingController slackHandleController = TextEditingController();
  TextEditingController githubHandleController = TextEditingController();
  TextEditingController aboutMeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    fullNameController.text = widget.fullName;
    slackHandleController.text = widget.slackHandle;
    githubHandleController.text = widget.githubHandle;
    aboutMeController.text = widget.aboutMe;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD5F2FF),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              ScreenToggle(
                  color1: Colors.transparent,
                  color2: activeColor,
                  elevation: 0,
                  onTap: null),
              SizedBox(
                height: 150,
              ),
              Expanded(
                child: CustomPaint(
                  size: Size(double.infinity,
                      (double.infinity * 0.5013404825737265).toDouble()),
                  painter: RPSCustomPainter(),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 0, left: 20, right: 20, top: 60),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            infoTitle('Full Name'),
                            SizedBox(height: 5),
                            InfoTextField(
                              controller: fullNameController,
                            ),
                            SizedBox(height: 10),
                            infoTitle('Slack Handle'),
                            SizedBox(height: 5),
                            InfoTextField(
                              controller: slackHandleController,
                            ),
                            SizedBox(height: 10),
                            infoTitle('Github Handle'),
                            SizedBox(height: 5),
                            InfoTextField(
                              controller: githubHandleController,
                            ),
                            SizedBox(height: 10),
                            infoTitle('About Me'),
                            SizedBox(height: 5),
                            AboutMeTextField(
                              controller: aboutMeController,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            SaveButton(
                                fullNameController: fullNameController,
                                slackHandleController: slackHandleController,
                                githubHandleController: githubHandleController,
                                aboutMeController: aboutMeController)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 4.15,
            left: MediaQuery.of(context).size.width / 2.9,
            child: Padding(
              padding: const EdgeInsets.only(top: 0),
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
          )
        ],
      ),
    );
  }
}

class SaveButton extends StatelessWidget {
  const SaveButton({
    super.key,
    required this.fullNameController,
    required this.slackHandleController,
    required this.githubHandleController,
    required this.aboutMeController,
  });

  final TextEditingController fullNameController;
  final TextEditingController slackHandleController;
  final TextEditingController githubHandleController;
  final TextEditingController aboutMeController;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(0xff1769aa))),
      onPressed: () {
        Navigator.pop(context, {
          'fullName': fullNameController.text,
          'slackHandle': slackHandleController.text,
          'githubHandle': githubHandleController.text,
          'aboutMe': aboutMeController.text,
        });
      },
      child: Text(
        'Save',
        textAlign: TextAlign.left,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w300, fontSize: 14),
      ),
    );
  }
}

Text infoTitle(String titleText) {
  return Text(
    titleText,
    style: TextStyle(
        color: Color(0xFFB8DDEE), fontWeight: FontWeight.w700, fontSize: 15),
  );
}
