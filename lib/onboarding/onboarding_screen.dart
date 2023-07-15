import 'package:apt_learn_design/onboarding/intro_page1.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
            alignment: Alignment(0, 0.60),
            child: SmoothPageIndicator(
              controller: _controller,
              effect: ExpandingDotsEffect(),
              count: 3,
            ),
          ),
          Container(
            alignment: Alignment(0, 0.80),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Register'),
            ),
          ),
          Container(
            alignment: Alignment(0, 0.95),
            child: OutlinedButton(
              onPressed: () {},
              child: Text('Login'),
            ),
          ),
        ],
      ),
    );
  }
}
