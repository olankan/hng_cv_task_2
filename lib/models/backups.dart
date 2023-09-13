// import 'package:cv_task_2/screens/editProfilePage.dart';
// import 'package:flutter/material.dart';

// class ScreenToggle extends StatefulWidget {
//   const ScreenToggle({super.key});

//   @override
//   State<ScreenToggle> createState() => _ScreenToggleState();
// }

// class _ScreenToggleState extends State<ScreenToggle> {
//   bool isClicked = false;
//   Color activeColor = Colors.blue;
//   Color inActiveColor =  Color.fromARGB(255, 160, 215, 241);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
//       child: Container(
//         height: 50,
//         width: MediaQuery.of(context).size.width - 40,
//         decoration: BoxDecoration(
//           color: const Color.fromARGB(255, 160, 215, 241),
//           borderRadius: BorderRadius.circular(22),
//         ),
//         child: Row(
//           children: [
//             GestureDetector(
//               onTap: isClicked == false ? () {
//                 setState(() {
//                   isClicked = !isClicked;
//                   print(isClicked);
//                 });
//                 // Navigator.pop(context);
//               } : null,
//               child: Material(
//                 elevation: isClicked == true ? 0 : 8,
//                 // shadowColor: Colors.white,
//                 borderRadius: BorderRadius.circular(22),
//                 color: Colors.transparent,
//                 child: Container(
//                   height: 50,
//                   width: MediaQuery.of(context).size.width - 216.4,
//                   decoration: BoxDecoration(
//                     color:
//                         isClicked == false ? Colors.blue : Colors.transparent,
//                     borderRadius: BorderRadius.circular(22),
//                   ),
//                   child: Center(
//                       child: Text(
//                     'User Profile',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w700,
//                     ),
//                   )),
//                 ),
//               ),
//             ),
//             GestureDetector(
//               onTap: isClicked == true ? () {
//                 setState(() {
//                   isClicked = !isClicked;
//                   print(isClicked);
//                 });
//                 // Navigator.push(
//                 //   context,
//                 //   MaterialPageRoute(
//                 //     builder: (context) => editProfileScreen(),
//                 //   ),
//                 // );
//               } : null,
//               child: Material(
//                 elevation: isClicked == true ? 8 : 0,
//                 // shadowColor: Colors.white,
//                 borderRadius: BorderRadius.circular(22),
//                 color: Colors.transparent,
//                 child: Container(
//                   height: 50,
//                   width: MediaQuery.of(context).size.width - 216.35,
//                   decoration: BoxDecoration(
//                     color:
//                         isClicked == false ? Colors.transparent : Colors.blue,
//                     borderRadius: BorderRadius.circular(22),
//                   ),
//                   child: Center(
//                       child: Text(
//                     'Edit Profile',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w700,
//                     ),
//                   )),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// // ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

// import 'package:cv_task_2/models/ScreenToggles.dart';
// import 'package:flutter/material.dart';

// class ProfilePage extends StatefulWidget {
//   const ProfilePage({super.key});

//   @override
//   State<ProfilePage> createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xffe6e5de),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ScreenToggle(),
//           Padding(
//             padding: const EdgeInsets.only(top: 40.0),
//             child: Center(
//               child: CircleAvatar(
//                 radius: 60,
//                 child: Text(
//                   'CV',
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 50,
//                       fontWeight: FontWeight.w300),
//                 ),
//                 backgroundColor: Colors.blue,
//               ),
//             ),
//           ),
//           Expanded(
//             child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(20),
//                     topRight: Radius.circular(20)),
//                 color: Colors.blue,
//               ),
//               width: double.infinity,
//               child: Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     infoTitle('Full Name'),
//                     infoText('Olankan Odeyemi'),
//                     SizedBox(height: 10),
//                     infoTitle('Slack Handle'),
//                     infoText('@Olankan Odeyemi'),
//                     SizedBox(height: 10),
//                     infoTitle('Github Handle'),
//                     infoText('@Olankan'),
//                     SizedBox(height: 10),
//                     infoTitle('About Me'),
//                     infoText(
//                         '''I'm Olankan, a skilled Flutter developer holding a Bachelor's degree in Computer Science. My home is in vibrant Lagos, Nigeria. When I'm not immersed in coding, I'm often lost in the world of music, playing the sax, or scoring baskets on the basketball court.''')
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Text infoTitle(String titleText) {
//     return Text(
//       titleText,
//       style: TextStyle(
//           color: const Color.fromARGB(255, 184, 221, 238),
//           fontWeight: FontWeight.w700,
//           fontSize: 20),
//     );
//   }
// }

// Text infoText(String input) {
//   return Text(
//     input,
//     textAlign: TextAlign.left,
//     style: TextStyle(
//         color: Colors.white, fontWeight: FontWeight.w700, fontSize: 20),
//   );
// }




// import 'package:cv_task_2/models/screenToggles.dart';
// import 'package:flutter/material.dart';

// class editProfileScreen extends StatefulWidget {
//   const editProfileScreen({super.key});

//   @override
//   State<editProfileScreen> createState() => _editProfileScreenState();
// }

// class _editProfileScreenState extends State<editProfileScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           ScreenToggle(),
//           Center(child: Text('vhvyvyvyyv'),)
//         ],
//       ),
//     );
//   }
// }