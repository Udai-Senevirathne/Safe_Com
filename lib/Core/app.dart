import 'package:flutter/material.dart';
import 'package:safe_com/core/navigation/AppNavigator.dart';
import 'package:safe_com/core/navigation/app_routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SafeCom',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: AppNavigator.navigatorKey,
      onGenerateRoute: AppNavigator.generateRoute,
      initialRoute: AppRoutes.email_log,
    );
  }
}
