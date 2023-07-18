import 'package:flutter/material.dart';

import '../utili/elevated_button.dart';
import '../utili/textfield_input.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(height: 50),
                Center(
                  child: Container(
                    height: 70,
                    child: Image.asset('assets/apt_learn_logo.png'),
                  ),
                ),
                SizedBox(height: 35),
                Text(
                  'Forgot Password',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  'Enter the email used in creating the account to reset password',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                ),
                SizedBox(height: 50),
                TextfieldInput(
                  hintText: 'Email',
                  obscureText: false,
                ),
                SizedBox(height: 30),
                ElevatedButtonStyle(onPressed: () {}, text: 'Reset Password'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
