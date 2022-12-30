import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.cyan, borderRadius: BorderRadius.circular(16)),
          child: Center(
            child: Text(
              "Profile Page",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
