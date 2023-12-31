// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Container(
                height: 50,
                child: Image.asset('assets/apt_learn_logo.png'),
              ),
              SizedBox(height: 20),
              Container(
                height: 180,
                alignment: Alignment(0, 0.25),
                child: Image.asset('assets/educator.png'),
              ),
              Text(
                'Get help and support from\n community',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Find a supportive community along your\nlearnineg journey',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
              )
            ],
          ),
        ),
      ),
    );
  }
}
