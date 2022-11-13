import 'package:flutter/material.dart';
import 'package:svemble/routes.dart';
import 'package:svemble/screens/Home/home_screen.dart';
import 'package:svemble/screens/Main/main_screen.dart';
import 'package:svemble/screens/Splash/splash_screen.dart';
import 'package:svemble/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Svemble - Интернет магазин!',
      theme: theme(),
      onGenerateRoute: AppRoute().onGenerateRoute,
      initialRoute: MainScreen.routeName,
    );
  }
}
