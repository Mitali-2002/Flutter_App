import 'package:astrogpt/widgets/global/largeText.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LargeText(
            text: 'Notification_Page',
        ),
      ),
    );  }
}
