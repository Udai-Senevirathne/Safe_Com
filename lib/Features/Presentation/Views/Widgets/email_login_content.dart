import 'package:flutter/material.dart';
import 'package:safe_com/Core/navigation/appnavigator.dart';
import 'package:safe_com/core/navigation/app_routes.dart';

class EmailLoginContent extends StatefulWidget {
  const EmailLoginContent({super.key});

  @override
  _EmailLoginContentState createState() => _EmailLoginContentState();
}

class _EmailLoginContentState extends State<EmailLoginContent> {
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView( // for small screen support
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 60),
                  // Logo
                  Image.asset(
                    'Images/logo.png',
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(height: 30),
                  // Description text
                  const Text(
                    'Securely log in with your mobile no or email to access your account.',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 40),
                  // Label
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Enter your email address',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Email TextField with border (not filled)
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: 'name@example.com',
                      hintStyle: const TextStyle(color: Colors.grey),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 30),
                  // Continue button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        AppNavigator.replaceWith(AppRoutes.home_harras);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[700],
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Continue',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
