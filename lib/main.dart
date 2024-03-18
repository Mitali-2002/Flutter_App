import 'package:astrogpt/pages/others/Sign_in_Login_pages/signIn_email.dart';
import 'package:astrogpt/pages/others/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: EmailSignIn(),
    );
  }
}

