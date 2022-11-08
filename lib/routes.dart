import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:svemble/auth/Login/login_screen.dart';
import 'package:svemble/auth/SignIn/signin_screen.dart';
import 'package:svemble/auth/Signup/signup_screen.dart';
import 'package:svemble/screens/AccountSetup/account_setup_screen.dart';
import 'package:svemble/screens/Home/home_screen.dart';
import 'package:svemble/screens/Main/main_screen.dart';
import 'package:svemble/screens/Splash/splash_screen.dart';
import 'package:svemble/screens/Welcome/welcome_screen.dart';

class AppRoute {
  Route onGenerateRoute(RouteSettings routeSettings) {
    dynamic arguments = routeSettings.arguments;
    switch (routeSettings.name) {
      case SplashScreen.routeName:
        return PageTransition(
          child: const SplashScreen(),
          type: PageTransitionType.fade,
        );
      case WelcomeScreen.routeName:
        return PageTransition(
          child: const WelcomeScreen(),
          type: PageTransitionType.fade,
        );
      case SignInScreen.routeName:
        return PageTransition(
          child: const SignInScreen(),
          type: PageTransitionType.fade,
        );
      case SignUpScreen.routeName:
        return PageTransition(
          child: const SignUpScreen(),
          type: PageTransitionType.rightToLeft,
        );
      case LoginScreen.routeName:
        return PageTransition(
          child: const LoginScreen(),
          type: PageTransitionType.rightToLeft,
        );
      case AccountSetupScreen.routeName:
        return PageTransition(
          child: const AccountSetupScreen(),
          type: PageTransitionType.bottomToTop,
        );
      case MainScreen.routeName:
        return PageTransition(
          child: const MainScreen(),
          type: PageTransitionType.fade,
        );
      case HomeScreen.routeName:
        return PageTransition(
          child: const HomeScreen(),
          type: PageTransitionType.rightToLeft,
        );
      default:
        return PageTransition(
            child: const Center(
              child: Text("Error"),
            ),
            type: PageTransitionType.bottomToTop);
    }
  }
}
