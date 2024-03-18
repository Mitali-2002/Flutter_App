import 'package:flutter/material.dart';

class LargeText extends StatelessWidget {

  final String text;
  final TextStyle? textStyle;
  final Color? textColor;

  LargeText({
    required this.text,
    this.textStyle,
    this.textColor
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle?? TextStyle(
          fontFamily: 'Sora',
          fontSize: 40,
          fontWeight: FontWeight.w700,
          color: textColor ?? Color(0xff141718)
      ),
    );
  }
}
