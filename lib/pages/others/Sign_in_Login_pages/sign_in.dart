import 'package:astrogpt/widgets/global/rounded_btn.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDAE6F0),
      body: Column(
        children: [
          Center(
            child: Image.asset(
              'assets/images/onboarding_img/Mini_Robo_Background_Ornament_3.png',
              width: 433,
              height: 450,
            ),
          ),
          Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(32), topRight: Radius.circular(32)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        child: Column(
                          children: [
                            Text(
                              'Chat with the smartest AI',
                              style: TextStyle(
                                fontFamily: 'Sora',
                                fontWeight: FontWeight.w600,
                                fontSize: 24,
                              ),
                            ),
                            SizedBox(height: 8,),
                            Text(
                              'Experience the power of AI with us',
                              style: TextStyle(
                                  fontFamily: 'Sora',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Color(0xff6C7275)
                              ),
                            ),

                            // First Button

                            SizedBox(height: 32,),
                            Container(
                              height: 56,
                              width: 311,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xffE8ECEF),
                                      width: 2.0
                                  ),
                                  borderRadius: BorderRadius.circular(12)
                              ),
                              child: RoundedButton(
                                btnName:  'Continue with Google',
                                bgColor: Colors.white,
                                icon: Image.asset(
                                  'assets/icons/sign_in/google_login_logo.png',
                                  width: 24,
                                  height: 24,
                                ),
                              ),
                            ),

                            // Second Button

                            SizedBox(height: 16,),
                            Container(
                              height: 56,
                              width: 311,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xffE8ECEF),
                                      width: 2.0
                                  ),
                                  borderRadius: BorderRadius.circular(12)
                              ),
                              child: RoundedButton(
                                btnName:  'Continue with Apple',
                                bgColor: Colors.white,
                                icon: Image.asset(
                                  'assets/icons/sign_in/apple_login_logo.png',
                                  width: 24,
                                  height: 24,
                                ),
                              ),
                            ),

                            // Third Button

                            SizedBox(height: 16,),
                            Container(
                              height: 56,
                              width: 311,
                              child: RoundedButton(
                                btnName:  'Continue with Email',
                                bgColor: Color(0xffEC8B33),
                                textColor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
          ),
        ],
      ),
    );
  }
}
