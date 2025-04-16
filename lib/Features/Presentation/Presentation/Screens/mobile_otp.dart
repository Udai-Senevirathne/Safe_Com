import 'package:flutter/material.dart';
import 'package:safe_com/Features/Presentation/Presentation/Widgets/mobile_otp_content.dart';

class MobileOtpScreen extends StatelessWidget {
  const MobileOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: MobileOtpContent(),
      ),
    );
  }
}