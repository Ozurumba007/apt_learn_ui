import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../home_screen/home_screen.dart';
import '../utili/elevated_button.dart';
import '../utili/textfield_input.dart';
import '../login/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 30),
                Center(
                  child: Container(
                    height: 70,
                    child: Image.asset('assets/apt_learn_logo.png'),
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'Welcome to aptLearn!',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30),
                TextfieldInput(
                  hintText: 'Full name',
                  obscureText: false,
                ),
                SizedBox(height: 15),
                TextfieldInput(
                  hintText: 'Username',
                  obscureText: false,
                ),
                SizedBox(height: 15),
                TextfieldInput(
                  hintText: 'Email',
                  obscureText: false,
                ),
                SizedBox(height: 15),
                TextfieldInput(
                  hintText: 'Password',
                  obscureText: true,
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
                SizedBox(height: 15),
                ElevatedButtonStyle(
                  text: 'Sign Up',
                  onPressed: () => Get.off(
                    () => HomeScreen(),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: () => Get.to(
                        () => LoginScreen(),
                      ),
                      child: Text(
                        'Login',
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
