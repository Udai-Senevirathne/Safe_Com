import 'dart:async';
import 'package:flutter/material.dart';
import 'package:safe_com/Core/constants/app_colors.dart';
import 'package:safe_com/Core/navigation/app_routes.dart';
import '../widgets/Splash_content.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _startSplashTimer();
  }

  void _startSplashTimer() {
    // Wait for the widget to be fully built before navigating
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 3), () {
        debugPrint('Navigating to second screen');
        // Use Navigator.of(context) as a fallback
        Navigator.of(context).pushReplacementNamed(AppRoutes.secondScreen);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.background,
      body: SplashContent(),
    );
  }
}