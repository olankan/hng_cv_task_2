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
                        controller: fullNameController,
                      ),
                      SizedBox(height: 10),
                      infoTitle('Slack Handle'),
                      SizedBox(height: 5),
                      InfoTextField(
                        textHint: 'Your Slack Handle',
                        controller: slackHandleController,
                      ),
                      SizedBox(height: 10),
                      infoTitle('Github Handle'),
                      SizedBox(height: 5),
                      InfoTextField(
                        textHint: 'Your Github Handle',
                        controller: githubHandleController,
                      ),
                      SizedBox(height: 10),
                      infoTitle('About Me'),
                      SizedBox(height: 5),
                      AboutMeTextField(
                        textHint: 'Your Biography',
                        controller: aboutMeController,
                      ),
                      SaveButton(fullNameController: fullNameController, slackHandleController: slackHandleController, githubHandleController: githubHandleController, aboutMeController: aboutMeController)
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
    return GestureDetector(
      onTap: () {
        Navigator.pop(context, {
          'fullName': fullNameController.text,
          'slackName': slackHandleController.text,
          'githubHandle': githubHandleController.text,
          'bio': aboutMeController.text,
        });
      },
      child: Container(
        height: 30,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.black),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 4),
          child: Text(
            'Save',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: 14),
          ),
        ),
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
