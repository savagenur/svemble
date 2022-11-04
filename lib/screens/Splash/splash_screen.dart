import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: SizeConfig.screenHeight,
                child: Image.asset(
                  "assets/images/welcome.jpg",
                  fit: BoxFit.fitHeight,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: SizeConfig.screenHeight / 2,
                  decoration:
                      const BoxDecoration(gradient: kPrimaryGradientLightColor),
                ),
              ),
              Positioned(
                  left: getPropScreenWidth(30),
                  bottom: getPropScreenWidth(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Добро пожаловать в 👋",
                        style: TextStyle(
                          fontSize: getPropScreenWidth(25),
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: getPropScreenWidth(20),
                      ),
                      Text(
                        "Svemble",
                        style: TextStyle(
                          fontSize: getPropScreenWidth(60),
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: getPropScreenWidth(20),
                      ),
                      const Text(
                        "Лучшее приложение века для электронной\nкоммерции для повседневных нужд!",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
