import 'package:astrogpt/widgets/global/largeText.dart';
import 'package:astrogpt/widgets/global/rounded_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EmailSignIn extends StatelessWidget {
  const EmailSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 200,left: 32),
        width: 311,
        height: 320,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              // width: 311,
              child: LargeText(
                  text: 'Your business email address',
              ),
            ),
            SizedBox(height: 32,),
            Container(
              height: 56,
              margin: const EdgeInsets.only(top: 10,),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: const Color(0xff1D1617).withOpacity(0.11),
                    blurRadius: 40,
                    spreadRadius: 0.0)
              ]),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.all(15),
                  hintText: 'Username or email',
                  hintStyle: const TextStyle(
                    color: Color(0xffDDDADA),
                    fontSize: 14,
                    fontFamily: 'Sora',
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12),
                    child: SvgPicture.asset('assets/icons/mail.svg'),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none),
                ),
              ),
            ),

            SizedBox(height: 16,),

            Container(
              height: 52,
              width: 311,
              child: RoundedButton(
                btnName: 'Continue',
                textColor: Colors.white,
                bgColor: Color(0xffEC8B33),
              ),
            ),
            SizedBox(height: 32,),
            Text(
              'New user? Create an account',
              style: TextStyle(
                fontFamily: 'Sora',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff141718)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
