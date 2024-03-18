import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String btnName;
  final Image? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final Color? textColor;
  final VoidCallback? callback;

  RoundedButton({
    required this.btnName,
    this.icon,
    this.bgColor,
    this.textStyle,
    this.textColor,
    this.callback
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback!();
      },
      child: icon!= null ? Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon!,
          SizedBox(width: 10,),
          Text(
            btnName,
            style: textStyle ?? TextStyle (
              fontFamily: 'Sora',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: textColor ?? Colors.black,
            ),
          ),
        ],

      ): Text(
        btnName,
        style: textStyle ?? TextStyle (
          fontFamily: 'Sora',
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: textColor ?? Colors.black,
        ),
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          )
      ),

    );
  }
}
