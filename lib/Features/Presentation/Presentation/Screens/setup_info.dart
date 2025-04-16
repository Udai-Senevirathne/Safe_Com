import 'package:flutter/material.dart';
import 'package:safe_com/Features/Presentation/Presentation/Widgets/setup_info_content.dart';

class SetupInfo extends StatelessWidget {
  const SetupInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SetupInfoContent(),
      ),
    );
  }
}