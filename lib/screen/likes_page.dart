import 'package:flutter/material.dart';

class LikesPage extends StatelessWidget {
  const LikesPage({Key? key}) : super(key: key);

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
              "Likes Page",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
