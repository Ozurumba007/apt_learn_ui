// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              alignment: Alignment(0, 0.25),
              child: Image.asset('assets/improvement.png'),
            ),
          ],
        ),
      ),
    );
  }
}
