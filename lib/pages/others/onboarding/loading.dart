import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

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
