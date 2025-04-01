import 'package:flutter/material.dart';
import 'package:safe_com/Features/Home/presentation/pages/home_screen.dart';

class SecondScreenContent extends StatelessWidget {
  final Animation<double> fadeAnimation;

  const SecondScreenContent({super.key, required this.fadeAnimation});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background image
        FadeTransition(
          opacity: fadeAnimation,
          child: Center(
            child: Image.asset(
              'Images/second.png',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
          ),
        ),
        // Overlay with a message (Title)
        Positioned(
          bottom: 300,
          left: 20,
          right: 20,
          child: FadeTransition(
            opacity: fadeAnimation,
            child: const Text(
              'Create emergency SOS',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        // Overlay with a message (Description)
        Positioned(
          bottom: 160,
          left: 20,
          right: 20,
          child: FadeTransition(
            opacity: fadeAnimation,
            child: const Text(
              '“If you are in a threatening situation, '
                  'press the SOS button to instantly alert your '
                  'trusted contacts and report the incident.”',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),

        // Get Started Button
        Positioned(
          bottom: 50,
          right: 20,
          child: FadeTransition(
            opacity: fadeAnimation,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'Get Started',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),

        // "Skip" Button
        Positioned(
          bottom: 50,
          left: 20,
          child: FadeTransition(
            opacity: fadeAnimation,
            child: TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text(
                'Skip',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}