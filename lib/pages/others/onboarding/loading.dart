import 'dart:async';
import '../Sign_in_Login_pages/sign_in.dart';

import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override

  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => SignInPage(),
          ));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEFEFE),
      body: Stack(
        alignment: Alignment.center,
        children: [
          // Container in the center
          Container(
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.center,
            child: Center(
              child: Image.asset(
                'assets/images/onboarding_img/Mini_Robo_Background_Ornament_5.png', // Path to your center image asset
                width: 440,
                height: 472,
              ),
            ),
          ),
          // Image at the bottom
          Positioned(
            bottom: 50, // Adjust as needed
            child: Column(
              children: [
                Image.asset(
                  'assets/images/Brainwave.png', // Path to your bottom image asset
                  width: 146,
                  height: 24,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
