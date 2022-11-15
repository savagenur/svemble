import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:svemble/auth/Login/login_screen.dart';
import 'package:svemble/auth/SignIn/signin_screen.dart';
import 'package:svemble/auth/Signup/signup_screen.dart';
import 'package:svemble/screens/AccountSetup/account_setup_screen.dart';
import 'package:svemble/screens/Category/category_screen.dart';
import 'package:svemble/screens/Checkout/checkout_screen.dart';
import 'package:svemble/screens/Comments/comments_screen.dart';
import 'package:svemble/screens/DetailProduct/detail_product_screen.dart';
import 'package:svemble/screens/Favorite/favorite_screen.dart';
import 'package:svemble/screens/Home/home_screen.dart';
import 'package:svemble/screens/Main/main_screen.dart';
import 'package:svemble/screens/Notification/notification_screen.dart';
import 'package:svemble/screens/Popular/popular_screen.dart';
import 'package:svemble/screens/SpecialOffer/special_offer_screen.dart';
import 'package:svemble/screens/Splash/splash_screen.dart';
import 'package:svemble/screens/Welcome/welcome_screen.dart';

import 'screens/SearchHome/search_home_screen.dart';

class AppRoute {
  Route onGenerateRoute(RouteSettings routeSettings) {
    dynamic arguments = routeSettings.arguments;
    switch (routeSettings.name) {
      case SplashScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: SplashScreen.routeName),
          child: const SplashScreen(),
          type: PageTransitionType.fade,
        );
      case WelcomeScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: WelcomeScreen.routeName),

          child: const WelcomeScreen(),
          type: PageTransitionType.fade,
        );
      case SignInScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: SignInScreen.routeName),
          child: const SignInScreen(),
          type: PageTransitionType.fade,
        );
      case SignUpScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: SignUpScreen.routeName),
          child: const SignUpScreen(),
          type: PageTransitionType.rightToLeft,
        );
      case LoginScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: LoginScreen.routeName),
          child: const LoginScreen(),
          type: PageTransitionType.rightToLeft,
        );
      case AccountSetupScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: AccountSetupScreen.routeName),
          child: const AccountSetupScreen(),
          type: PageTransitionType.bottomToTop,
        );
      case MainScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: MainScreen.routeName),
          child: const MainScreen(),
          type: PageTransitionType.fade,
        );
      case HomeScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: HomeScreen.routeName),
          child: const HomeScreen(),
          type: PageTransitionType.rightToLeft,
        );
      case NotificationScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: NotificationScreen.routeName),
          child: const NotificationScreen(),
          type: PageTransitionType.rightToLeft,
        );
      case FavoriteScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: FavoriteScreen.routeName),
          child: const FavoriteScreen(),
          type: PageTransitionType.rightToLeft,
        );
      case PopularScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: PopularScreen.routeName),
          child: const PopularScreen(),
          type: PageTransitionType.rightToLeft,
        );
      case SpecialOfferScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: SpecialOfferScreen.routeName),
          child: const SpecialOfferScreen(),
          type: PageTransitionType.rightToLeft,
        );
      case SearchHomeScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: SearchHomeScreen.routeName),
          child: const SearchHomeScreen(),
          type: PageTransitionType.fade,
        );
      case CategoryScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: CategoryScreen.routeName),
          child: const CategoryScreen(),
          type: PageTransitionType.rightToLeft,
        );
      case DetailProductScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: DetailProductScreen.routeName),
          child: const DetailProductScreen(),
          type: PageTransitionType.rightToLeft,
        );
      case CommentsScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: CommentsScreen.routeName),
          child: const CommentsScreen(),
          type: PageTransitionType.rightToLeft,
        );
      case CheckoutScreen.routeName:
        return PageTransition(
          settings: const RouteSettings(name: CheckoutScreen.routeName),
          child: const CheckoutScreen(),
          type: PageTransitionType.rightToLeft,
        );
      default:
        return PageTransition(
          settings: const RouteSettings(name: "/error-404"),
            child: const Center(
              child: Text("Ошибка!"),
            ),
            type: PageTransitionType.bottomToTop);
    }
  }
}
