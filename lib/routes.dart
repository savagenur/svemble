import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:svemble/screens/Splash/splash_screen.dart';
import 'package:svemble/screens/Welcome/welcome_screen.dart';

class AppRoute {
  Route onGenerateRoute(RouteSettings routeSettings) {
    dynamic arguments = routeSettings.arguments;
    switch (routeSettings.name) {
      case SplashScreen.routeName:
        return PageTransition(
            child: SplashScreen(), type: PageTransitionType.fade);
      case WelcomeScreen.routeName:
        return PageTransition(
            child: WelcomeScreen(), type: PageTransitionType.fade);
      default:
        return PageTransition(
            child: Container(
              child: Text("Error"),
            ),
            type: PageTransitionType.bottomToTop);
    }
  }
}
