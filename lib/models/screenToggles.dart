// ignore_for_file: must_be_immutable, unused_import, prefer_const_constructors
import 'package:cv_task_2/screens/editProfilePage.dart';
import 'package:flutter/material.dart';

class ScreenToggle extends StatelessWidget {
  ScreenToggle({required this.isClicked, required this.onToggled});

  late Function onToggled;
  late bool isClicked;
  Color activeColor = Colors.blue;
  Color inActiveColor = Color(0xFFA0D7F1);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width - 40,
        decoration: BoxDecoration(
          color: inActiveColor,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Row(
          children: [
            GestureDetector(
              onTap: isClicked == true
                  ? () {
                      onToggled(!isClicked);
                    }
                  : null,
              child: Material(
                elevation: isClicked == true ? 0 : 5,
                borderRadius: BorderRadius.circular(22),
                color: Colors.transparent,
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width - 216.4,
                  decoration: BoxDecoration(
                    color:
                        isClicked == false ? activeColor : Colors.transparent,
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
              onTap: isClicked == false
                  ? () {
                      onToggled(!isClicked);
                    }
                  : null,
              child: Material(
                elevation: isClicked == true ? 5 : 0,
                borderRadius: BorderRadius.circular(22),
                color: Colors.transparent,
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width - 216.35,
                  decoration: BoxDecoration(
                    color:
                        isClicked == false ? Colors.transparent : activeColor,
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
