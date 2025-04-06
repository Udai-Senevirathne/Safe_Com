import 'package:flutter/material.dart';
import 'package:safe_com/Features/Presentation/Presentation/Screens/Splash_Screen.dart';
import 'package:safe_com/Features/Presentation/Presentation/Screens/second_screen.dart';
import 'package:safe_com/Features/Presentation/Presentation/Screens/third_screen.dart';
import 'package:safe_com/features/home/presentation/pages/home_screen.dart';
import 'package:safe_com/core/navigation/app_routes.dart';
import 'package:safe_com/Features/Presentation/Presentation/Screens/email_login.dart';


class AppNavigator {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case AppRoutes.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case AppRoutes.secondScreen:
        return MaterialPageRoute(builder: (_) => const SecondScreen());

      case AppRoutes.thirdScreen:
        return MaterialPageRoute(builder: (_) => const ThirdScreen());

      case AppRoutes.email_log:
        return MaterialPageRoute(builder: (_) => EmailLogin());

      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(body: Center(child: Text('Page not found'))),
        );
    }
  }

  static void navigateTo(String routeName, {Object? arguments}) {
    navigatorKey.currentState?.pushNamed(routeName, arguments: arguments);
  }


  static void replaceWith(String routeName, {Object? arguments}) {
    debugPrint('Replacing route with: $routeName');
    navigatorKey.currentState?.pushReplacementNamed(routeName, arguments: arguments);
  }

  static void goBack() {
    if (navigatorKey.currentState?.canPop() ?? false) {
      navigatorKey.currentState?.pop();
    }
  }
}

