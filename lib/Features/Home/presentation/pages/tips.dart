import 'package:flutter/material.dart';
import 'package:safe_com/Features/Home/presentation/widgets/tips_content.dart';

class TipsScreen extends StatefulWidget {
  const TipsScreen({Key? key}) : super(key: key);

  @override
  State<TipsScreen> createState() => _TipsScreenState();
}

class _TipsScreenState extends State<TipsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TipsContent(),
    );
  }
}
