import 'package:apt_learn_design/utili/textfield_input.dart';
import 'package:flutter/material.dart';

import '../utili/elevated_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50),
                Center(
                  child: Container(
                    height: 70,
                    child: Image.asset('assets/apt_learn_logo.png'),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Welcome back!',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 50),
                TextfieldInput(
                  hintText: 'Email or Username',
                  obscureText: false,
                ),
                SizedBox(height: 15),
                TextfieldInput(
                  hintText: 'Password',
                  suffixIcon: Icon(Icons.remove_red_eye),
                  obscureText: true,
                ),
                SizedBox(height: 30),
                ElevatedButtonStyle(
                  text: 'Login',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
