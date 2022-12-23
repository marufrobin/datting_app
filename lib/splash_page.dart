import 'dart:async';

import 'package:datting_app/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState

    Timer(Duration(seconds: 4), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => SignUpPage(),
          ),
          (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: double.infinity,
          child: Image.asset(
            "images/1.png",
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: 160,
          bottom: 0,
          child: Center(
            child: LoadingAnimationWidget.stretchedDots(
                color: Colors.white, size: 60),
          ),
        )
      ]),
    );
  }
}
