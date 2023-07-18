import 'package:apt_learn_design/utili/textfield_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../forgot_pass_screen/forgot_password_screen.dart';
import '../home_screen/home_screen.dart';
import '../signUp/signUp_screen.dart';
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () => Get.to(
                        () => ForgotPassword(),
                      ),
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                ElevatedButtonStyle(
                  text: 'Login',
                  onPressed: () => Get.off(
                    () => HomeScreen(),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: () => Get.to(
                        () => SignUpScreen(),
                      ),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
