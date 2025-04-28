import 'package:flutter/material.dart';
import 'package:safe_com/Features/Presentation/Views/Screens/third_screen.dart';




class SecondScreenContent extends StatelessWidget {
  final Animation<double> fadeAnimation;

  const SecondScreenContent({super.key, required this.fadeAnimation});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background image with fade animation
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
        // Overlay with a title
        Positioned(
          bottom: 315,
          left: 20,
          right: 20,
          child: FadeTransition(
            opacity: fadeAnimation,
            child: const Text(
              'Create emergency SOS',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        // Overlay with a description
        Positioned(
          bottom: 150,
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
                fontStyle: FontStyle.italic,
                fontSize: 20,
              ),
            ),
          ),
        ),
        // "Get Started"
        Positioned(
          bottom: 50,
          right: 20,
          child: FadeTransition(
            opacity: fadeAnimation,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const ThirdScreen()),
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
                ),
              ),
            ),
          ),
        ),
        // "Skip"
        Positioned(
          bottom: 50,
          left: 20,
          child: FadeTransition(
            opacity: fadeAnimation,
            child: TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const ThirdScreen()),
                );
              },
              child: const Text(
                'Skip',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}