// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

// EditProfileScreen editProfileScreen = EditProfileScreen();

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    infoTitle('Full Name'),
                    SizedBox(height: 5),
                    infoText('Olankan Odeyemi'),
                    SizedBox(height: 10),
                    infoTitle('Slack Handle'),
                    SizedBox(height: 5),
                    infoText('@Olankan Odeyemi'),
                    SizedBox(height: 10),
                    infoTitle('Github Handle'),
                    SizedBox(height: 5),
                    infoText('@Olankan'),
                    SizedBox(height: 10),
                    infoTitle('About Me'),
                    SizedBox(height: 5),
                    aboutMeInfoText(
                        '''I'm Olankan, a skilled Flutter developer holding a Bachelor's degree in Computer Science. My home is in vibrant Lagos, Nigeria. When I'm not immersed in coding, I'm often lost in the world of music, playing the sax, or scoring baskets on the basketball court.''')
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
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
    // height: 250,
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
