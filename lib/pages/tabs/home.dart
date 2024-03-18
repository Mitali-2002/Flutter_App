import 'package:astrogpt/widgets/global/largeText.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LargeText(
          text: 'Home'
        ),
      ),
    );
  }
}
