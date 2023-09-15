// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, use_key_in_widget_constructors, must_be_immutable

import 'package:cv_task_2/models/customClipperPath.dart';
import 'package:cv_task_2/models/screenToggles.dart';
import 'package:cv_task_2/screens/editProfilePage.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String fullName = "Olankan Odeyemi";
  String slackHandle = "@Olankan Odeyemi";
  String githubHandle = "@Olankan";
  String aboutMe =
      '''I'm Olankan, a skilled Flutter developer holding a Bachelor's degree in Computer Science. My home is in vibrant Lagos, Nigeria. When I'm not immersed in coding, I'm often lost in the world of music, playing the sax, or scoring baskets on the basketball court.''';
  Color activeColor = Color(0xFF2196F3);
  Color inActiveColor = Color(0xFFA0D7F1);
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
                  color2: Colors.transparent,
                  color1: activeColor,
                  elevation: 0,
                  onTap: () {}),
              SizedBox(
                height: 170,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                     
                      color: Color(0xFFD5F2FF)),
                  width: double.infinity,
                  child: CustomPaint(
                    size: Size(double.infinity, (double.infinity * 0.5013404825737265).toDouble()),
                    painter: RPSCustomPainter(),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 0, left: 20, right: 20, top: 60),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            infoTitle('Full Name'),
                            SizedBox(height: 5),
                            infoText('$fullName'),
                            SizedBox(height: 10),
                            infoTitle('Slack Handle'),
                            SizedBox(height: 5),
                            infoText('$slackHandle'),
                            SizedBox(height: 10),
                            infoTitle('Github Handle'),
                            SizedBox(height: 5),
                            infoText('$githubHandle'),
                            SizedBox(height: 10),
                            infoTitle('About Me'),
                            SizedBox(height: 5),
                            aboutMeInfoText('$aboutMe'),
                            SizedBox(height: 10),
                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff1769aa))),
                              onPressed: () async {
                                final updatedInfo = await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => EditProfileScreen(
                                      fullName: fullName,
                                      slackHandle: slackHandle,
                                      githubHandle: githubHandle,
                                      aboutMe: aboutMe,
                                    ),
                                  ),
                                );
                                if (updatedInfo != null) {
                                  setState(() {
                                    fullName = updatedInfo['fullName'];
                                    slackHandle = updatedInfo['slackHandle'];
                                    githubHandle = updatedInfo['githubHandle'];
                                    aboutMe = updatedInfo['aboutMe'];
                                  });
                                }
                              },
                              child: Text(
                                'Click to Edit',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 14),
                              ),
                            ),
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
            top: MediaQuery.of(context).size.height/ 3.8,
            left: MediaQuery.of(context).size.width/ 2.9,
            // right: ,
            child: Padding(
              padding: const EdgeInsets.only(top: 0),
              child: CircleAvatar(
                radius: 60,
                child: Text(
                  'CV',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w300),
                ),
                backgroundColor: activeColor,
              ),
            ),
          ),
        ],
      ),
    );
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
}

Container infoText(String input) {
  return Container(
    height: 30,
    width: 180,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8), color: Color(0xff37a1f4)),
    child: Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 4),
      child: Text(
        input,
        textAlign: TextAlign.left,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w300, fontSize: 14),
      ),
    ),
  );
}

Container aboutMeInfoText(String input) {
  return Container(
    width: 300,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8), color: Color(0xff37a1f4)),
    child: Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 15, top: 8, bottom: 8),
      child: Text(
        input,
        textAlign: TextAlign.left,
        style: TextStyle(
            wordSpacing: -1,
            color: Colors.white,
            inherit: true,
            fontWeight: FontWeight.w300,
            fontSize: 14),
      ),
    ),
  );
}
