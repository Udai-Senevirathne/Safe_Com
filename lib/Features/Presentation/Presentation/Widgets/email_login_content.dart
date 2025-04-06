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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Image.asset(
              'Images/logo.png',
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 30),
            // Description text
            const Text(
              'Securely log in with your mobile no or email to access your account.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 40),
            // Label for email field
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Enter your email address',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Email text field
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: 'name@example.com',
                hintStyle: const TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
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
                  // Navigate to HomeScreen using AppNavigator
                  AppNavigator.replaceWith(AppRoutes.home);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'Continue',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}