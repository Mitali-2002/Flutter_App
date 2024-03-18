import 'package:astrogpt/pages/others/onboarding/loading.dart';
import 'package:astrogpt/pages/others/onboarding/onboardingitems.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../widgets/global/rounded_btn.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final controller = OnboardingItems();
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: PageView.builder(
            itemCount: controller.items.length,
            controller: pageController,
            itemBuilder: (context, index) {
              return Column(
                children: [
                   Container(
                     alignment: Alignment.topLeft,
                     padding: const EdgeInsets.only(left: 10, top: 50),
                     child: RoundedButton(
                       btnName: 'skip',
                       bgColor: Color(0xffF3F5F7),
                       callback: () => pageController.jumpToPage(controller.items.length-1),
                     ),
                   ),
                  Image.asset(
                      controller.items[index].image,
                      width: 598,
                      height: 375,
                  ),
                  Text(controller.items[index].title,
                      style: const TextStyle(
                        fontSize: 40,
                        fontFamily: 'Sora',
                        fontWeight: FontWeight.bold,
                      ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 15,),
                  Text(controller.items[index].desc,
                    style: const TextStyle(
                      fontSize: 17,
                      fontFamily: 'Sora',
                      fontWeight: FontWeight.w400,
                      color: Color(0xff6C7275)
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 15,),
                  SmoothPageIndicator(
                      controller: pageController,
                      count: controller.items.length,
                    effect: const WormEffect(
                      dotHeight: 10,
                      dotWidth: 10,
                      spacing: 15,
                      activeDotColor: Color(0xffEC8B33)
                    ),
                  ),
                  const SizedBox(height: 25,),
                  Center(
                    child: SizedBox(
                      height: 52,
                      width: 311,
                      child: RoundedButton(
                        btnName: 'Get Started',
                        bgColor: Color(0xff141718),
                        textColor: Colors.white,
                        callback: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoadingPage(),
                              ));
                        },
                      ),
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}