import 'package:astrogpt/pages/others/Sign_in_Login_pages/signin_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../widgets/global/largeText.dart';

class PasswordSignIn extends StatefulWidget {
  const PasswordSignIn({super.key});

  @override
  State<PasswordSignIn> createState() => _PasswordSignInState();
}

class _PasswordSignInState extends State<PasswordSignIn> {

  bool isButtonActive = true;
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    controller.addListener(() {
      final isButtonActive = controller.text.isNotEmpty;
      setState(() => this.isButtonActive = isButtonActive);
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 200,left: 32),
        width: 311,
        height: 320,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              // width: 311,
              child: LargeText(
                text: 'Enter your password',
              ),
            ),
            const SizedBox(height: 32,),
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
                controller: controller,
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
                    child: SvgPicture.asset('assets/icons/lock.svg'),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none),
                ),
              ),
            ),

            const SizedBox(height: 16,),

            Container(
              height: 52,
              width: 311,
              // child: RoundedButton(
              //   btnName: 'Continue',
              //   textColor: Colors.white,
              //   bgColor: Color(0xffEC8B33),
              //   callback:
              // ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    disabledBackgroundColor: const Color(0xffEC8B33).withOpacity(0.3),
                    backgroundColor: const Color(0xffEC8B33),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    )
                ),
                child: const Text(
                  'Continue',
                  style: TextStyle (
                    fontFamily: 'Sora',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                onPressed: isButtonActive? () {
                  setState(() => isButtonActive = false);
                  controller.clear();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignInLoading(),
                      ));
                }
                : null,
              ),
            ),
            const SizedBox(height: 32,),
            const Text(
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
