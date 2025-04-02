import 'package:flutter/material.dart';
import 'package:safe_com/Core/constants/app_colors.dart';

class SplashContent extends StatefulWidget {
  const SplashContent({super.key});

  @override
  _SplashContentState createState() => _SplashContentState();
}

class _SplashContentState extends State<SplashContent> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0.8, end: 1.2).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Logo with zoom
          ScaleTransition(
            scale: _animation,
            child: Image.asset(
              'Images/logo.png',
              width: 200,
              height: 200,
            ),
          ),
          const SizedBox(height: 20),
          // App Name
          const Text(
            'SAFECOM',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.red,

            ),
          ),
        ],
      ),
    );
  }
}