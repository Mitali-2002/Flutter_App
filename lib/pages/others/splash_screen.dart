import 'dart:async';
import 'package:astrogpt/pages/others/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import '../../main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => OnBoardingPage(),
          ));
    });
  }

  @override
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
                'assets/images/Symbold-bound.png', // Path to your center image asset
                width: 96,
                height: 96,
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
                SizedBox(height: 10),
                Text(
                  'version 1.1.0', // Add your text here
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Sora',
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
