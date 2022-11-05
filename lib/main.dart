import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svemble/constants.dart';
import 'package:svemble/routes.dart';
import 'package:svemble/screens/Splash/splash_screen.dart';
import 'package:svemble/size_config.dart';
import 'package:svemble/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      onGenerateRoute: AppRoute().onGenerateRoute,
      initialRoute: SplashScreen.routeName,
    );
  }
}


