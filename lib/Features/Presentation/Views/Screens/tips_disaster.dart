import 'package:flutter/material.dart';
import 'package:safe_com/Features/Presentation/Views/Widgets/tips_disaster_content.dart';

class TipsDisasterScreen extends StatefulWidget {
  const TipsDisasterScreen({super.key});

  @override
  State<TipsDisasterScreen> createState() => _TipsDisasterScreenState();
}

class _TipsDisasterScreenState extends State<TipsDisasterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const TipsDisasterContent(),
    );
  }
}