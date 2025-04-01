import 'package:flutter/material.dart';
import 'package:safe_com/core/navigation/AppNavigator.dart';
import 'package:safe_com/Core/navigation/app_routes.dart';
import 'Features/Presentation/presentation/Screens/Splash_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove debug banner globally
      title: 'SafeCom',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: AppNavigator.navigatorKey, // Use the global navigator key
      onGenerateRoute: AppNavigator.generateRoute, // Set up named routes
      initialRoute: AppRoutes.splash, // Set the initial route

    );
  }
}
