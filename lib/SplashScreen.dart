import 'dart:async';
import 'package:flutter/material.dart';
import 'Screen/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTimer() {
    Timer(const Duration(seconds: 3), () async {
      // send user to main screen
      Navigator.push(
          context, MaterialPageRoute(builder: (c) => SignInScreen()));
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Background
          Container(
            color: Colors.white,
          ),
          // Overlayed Image
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/instodrum.png",
                  width: 600.0, // Adjust width as needed
                  fit: BoxFit.contain,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Capture And Share Your  Moment",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
