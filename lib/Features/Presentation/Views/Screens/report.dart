import 'package:flutter/material.dart';
import 'package:safe_com/Features/Presentation/Views/Widgets/report_content.dart';


class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ReportContent(),
    );
  }
}