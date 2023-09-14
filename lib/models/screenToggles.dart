// ignore_for_file: must_be_immutable, unused_import, prefer_const_constructors
import 'package:cv_task_2/screens/editProfilePage.dart';
import 'package:flutter/material.dart';

class ScreenToggle extends StatelessWidget {
  ScreenToggle(
      {required this.color1, required this.color2, required this.elevation, required this.onTap});

  Color color1;  Color color2; 
  double elevation;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width - 40,
        decoration: BoxDecoration(
          color: Color(0xFFA0D7F1),
          borderRadius: BorderRadius.circular(22),
        ),
        child: Row(
          children: [
            GestureDetector(
              onTap: onTap,
              child: Material(
                elevation: elevation,
                borderRadius: BorderRadius.circular(22),
                color: Colors.transparent,
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width - 216.4,
                  decoration: BoxDecoration(
                    color: color1,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Center(
                      child: Text(
                    'User Profile',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  )),
                ),
              ),
            ),
            GestureDetector(
              onTap: onTap,
              child: Material(
                elevation: elevation,
                borderRadius: BorderRadius.circular(22),
                color: Colors.transparent,
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width - 216.35,
                  decoration: BoxDecoration(
                    color: color2,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Center(
                      child: Text(
                    'Edit Profile',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
