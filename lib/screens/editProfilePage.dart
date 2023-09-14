// ignore_for_file: sort_child_properties_last, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cv_task_2/models/infoTextField.dart';
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
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 213, 242, 255),
        title: Center(
            child: Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Text(
            'Edit Profile',
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.w500, fontSize: 25),
          ),
        )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0.0),
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
                        SizedBox(height: 5,),
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
        color: const Color.fromARGB(255, 184, 221, 238),
        fontWeight: FontWeight.w700,
        fontSize: 15),
  );
}
