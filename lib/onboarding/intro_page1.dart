// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

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
              SizedBox(height: 20),
              Container(
                height: 50,
                child: Image.asset('assets/apt_learn_logo.png'),
              ),
              SizedBox(height: 50),
              Container(
                height: 150,
                alignment: Alignment(0, 0.25),
                child: Image.asset('assets/community.png'),
              ),
              Text(
                'Acquire on-demand tech skills\nfrom top educators',
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
                'Enroll in techinal and non-technical courses that will help bridge the knowledge gap',
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
