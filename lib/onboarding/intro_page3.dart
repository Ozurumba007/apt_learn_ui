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
        child: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Container(
                height: 50,
                child: Image.asset('assets/apt_learn_logo.png'),
              ),
              SizedBox(height: 30),
              Container(
                height: 180,
                alignment: Alignment(0, 0.25),
                child: Image.asset('assets/improvement.png'),
              ),
              Text(
                'Practice and improve your\ncoding skills',
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
                'Develop your coding skills for free while\nhaving fun and learning with others',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
