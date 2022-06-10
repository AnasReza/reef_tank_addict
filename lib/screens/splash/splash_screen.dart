import 'dart:async';

import 'package:flutter/material.dart';

import '../register/register.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  late Timer _timer;
  int _start = 2;

  void startTimer() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (Timer timer) {
        if (_start == 0) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Register()));
          _timer.cancel();
        } else {
          _start--;
        }
      },
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/png/background.jpeg"),
                fit: BoxFit.fill)),
        child: Center(
          child: Image.asset('assets/png/appicon.jpeg'),
        ),
      ),
    ));
  }
}
