import 'package:flutter/material.dart';

class BeforeHomeContent extends StatelessWidget {
  const BeforeHomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Map-like background
          SizedBox.expand(
            child: Image.asset(
              'Images/Map.jpg',
              fit: BoxFit.cover,
            ),
          ),

          // Centered "Get access to location" text
          Positioned(
            top: 60,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'Get access to location',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  shadows: [
                    Shadow(
                      blurRadius: 6,
                      color: Colors.white,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Bottom Continue button
          Positioned(
            bottom: 45,
            left: 20,
            right: 20,
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Navigation or location logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
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
          ),
        ],
      ),
    );
  }
}




