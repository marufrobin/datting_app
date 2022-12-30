import 'package:flutter/material.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({Key? key}) : super(key: key);

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
              "Inbox Page",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
