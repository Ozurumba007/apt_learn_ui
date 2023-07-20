import 'package:apt_learn_design/onboarding/intro_page1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../login/login_screen.dart';
import '../signUp/signUp_screen.dart';
import '../utili/elevated_button.dart';
import 'intro_page2.dart';
import 'intro_page3.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.50),
            child: SmoothPageIndicator(
              controller: _controller,
              effect: ExpandingDotsEffect(),
              count: 3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButtonStyle(
                  text: 'Register',
                  onPressed: () => Get.off(
                    () => SignUpScreen(),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        width: 1.0,
                        color: Colors.deepPurpleAccent,
                      ),
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () => Get.off(
                      () => LoginScreen(),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.deepPurpleAccent[200],
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
