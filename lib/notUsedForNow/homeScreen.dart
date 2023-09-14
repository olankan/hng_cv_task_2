// import 'package:cv_task_2/models/ScreenToggles.dart';
// import 'package:cv_task_2/screens/editProfilePage.dart';
// import 'package:cv_task_2/screens/profilePage.dart';
// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {

// bool isClicked = false;
//  void toggleClicked(bool value){
//   setState(() {
//     isClicked = value;
//     print(isClicked);
//   });
//  }
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 213, 242, 255),
//       body: Stack(children: [
//         Positioned(
//           top: 5,
//           child: ScreenToggle(isClicked: isClicked, onToggled: toggleClicked),
//         ),
//         isClicked == true ? EditProfileScreen() : ProfilePage(),
//       ]),
//     );
//   }
// }
