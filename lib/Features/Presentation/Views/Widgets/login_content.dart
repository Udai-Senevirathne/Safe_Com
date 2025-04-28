import 'package:flutter/material.dart';
import 'package:safe_com/Core/navigation/appnavigator.dart';
import 'package:safe_com/core/navigation/app_routes.dart';


class LoginContent extends StatelessWidget {
  const LoginContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 60),

              // Logo
              Center(
                child: Image.asset(
                  'Images/logo.png',
                  width: 100,
                  height: 100,
                ),
              ),

              const SizedBox(height: 30),
            Align(
              alignment: Alignment.centerLeft,
               child: Text(
                'Securely log in with your mobile no or email to access your account.',

                style: TextStyle(fontSize: 14, color: Colors.black87),
              ),
            ),

              const SizedBox(height: 30),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Enter your mobile number',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),

              const SizedBox(height: 8),

              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    AppNavigator.replaceWith(AppRoutes.otp); // or your route
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
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Divider with text
              Row(
                children: const [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("or"),
                  ),
                  Expanded(child: Divider()),
                ],
              ),

              const SizedBox(height: 20),

              // Google Button
              SizedBox(
                width: double.infinity,
                child: OutlinedButton.icon(
                  icon: Image.asset(
                    'Images/google.png',
                    height: 20,
                    width: 20,
                  ),
                  label: const Text(
                    'Continue with Google',
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    // Google login logic
                  },
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    side: const BorderSide(color: Colors.grey),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: Colors.white,
                  ),
                ),
              ),

              const SizedBox(height: 12),

              // Email Button
              SizedBox(
                width: double.infinity,
                child: OutlinedButton.icon(
                  icon: const Icon(Icons.mail_outline, color: Colors.black),
                  label: const Text(
                    'Continue with email',
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    // Email login logic
                  },
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    side: const BorderSide(color: Colors.grey),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
