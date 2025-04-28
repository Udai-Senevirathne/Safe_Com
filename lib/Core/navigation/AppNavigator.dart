import 'package:flutter/material.dart';
import 'package:safe_com/Core/navigation/app_routes.dart';
import 'package:safe_com/Features/Presentation/Views/Screens/Home_disaster.dart';
import 'package:safe_com/Features/Presentation/Views/Screens/Home_harras.dart';
import 'package:safe_com/Features/Presentation/Views/Screens/Otp_screen.dart';
import 'package:safe_com/Features/Presentation/Views/Screens/Setup_info.dart';
import 'package:safe_com/Features/Presentation/Views/Screens/Second_screen.dart';
import 'package:safe_com/Features/Presentation/Views/Screens/Splash_screen.dart';
import 'package:safe_com/Features/Presentation/Views/Screens/before_home.dart';
import 'package:safe_com/Features/Presentation/Views/Screens/email_login.dart';
import 'package:safe_com/Features/Presentation/Views/Screens/login_screen.dart';
import 'package:safe_com/Features/Presentation/Views/Screens/mobile_otp.dart';
import 'package:safe_com/Features/Presentation/Views/Screens/report.dart';
import 'package:safe_com/Features/Presentation/Views/Screens/report_two.dart';
import 'package:safe_com/Features/Presentation/Views/Screens/third_screen.dart';
import 'package:safe_com/Features/Presentation/Views/Screens/tips.dart';
import 'package:safe_com/Features/Presentation/Views/Screens/tips_disaster.dart';



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

      case AppRoutes.otp:
        return MaterialPageRoute(builder: (_) => const OtpScreen());

      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case AppRoutes.mobile_otp:
        return MaterialPageRoute(builder: (_) => const MobileOtpScreen());

        case AppRoutes.setup:
        return MaterialPageRoute(builder: (_) => const SetupInfo());

      case AppRoutes.before_home:
        return MaterialPageRoute(builder: (_) => const BeforeHome());

      case AppRoutes.home_harras:
        return MaterialPageRoute(builder: (_) => const HomeHarras());

       case AppRoutes.home_disaster:
        return MaterialPageRoute(builder: (_) => const HomeDisaster());

      case AppRoutes.report:
        return MaterialPageRoute(builder: (_) => const ReportScreen());

        case AppRoutes.report_two:
        return MaterialPageRoute(builder: (_) => const ReportScreenTwo());

      case AppRoutes.tips:
        return MaterialPageRoute(builder: (_) => const TipsScreen());

      case AppRoutes.tips_disaster:
        return MaterialPageRoute(builder: (_) => const TipsDisasterScreen());

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

