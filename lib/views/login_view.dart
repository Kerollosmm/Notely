import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:notely/widgets/button.dart';
import 'package:notely/widgets/custom_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController _Email = TextEditingController();
  TextEditingController _PassWord = TextEditingController();
  bool isSecure = true;

  @override
  void initState() {
    _Email = TextEditingController();
    _PassWord = TextEditingController();
    isSecure = true;

    super.initState();
  }

  @override
  void dispose() {
    _Email.dispose();
    _PassWord.dispose();
    super.dispose();
  }

  // NEW CODE
  void toggleIsSecure() {
    // Renamed for clarity
    setState(() {
      isSecure = !isSecure; // Toggles the boolean value
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 220),
            const Center(
              child: Column(
                children: [
                  Text(
                    "Welcome Back",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Please enter your details to sign in',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsetsGeometry.all(23),
              child: Column(
                children: [
                  CustomField(
                    controller: _Email,
                    labelText: 'Email',
                    onTap: null,
                    isSecure: false,
                  ),
                  const SizedBox(height: 20),
                  // In your LoginView build method
                  CustomField(
                    controller: _PassWord,
                    labelText: 'Password',
                    isSecure: isSecure,
                    onTap: toggleIsSecure, // Use the corrected function
                  ),
                  const SizedBox(height: 20),
                  Button(
                    text: 'LogIn',
                    ontap: () async {
                      final email = _Email.text;
                      final password = _PassWord.text;
                      await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                            email: email,
                            password: password,
                          );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
