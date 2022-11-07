import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:svemble/constants.dart';
import 'package:svemble/size_config.dart';

import '../../components/default_button.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = "/login";
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
            child: Column(
              children: [
                SizedBox(
                  height: getPropScreenWidth(20),
                ),
                SvgPicture.asset(
                  "assets/icons/login.svg",
                  width: SizeConfig.screenWidth * .4,
                ),
                SizedBox(
                  height: getPropScreenWidth(20),
                ),
                Text(
                  "Вход:",
                  style: headingStyle,
                ),
                SizedBox(
                  height: getPropScreenWidth(30),
                ),
                EnterOptionTile(
                  iconSvg: 'icons8-facebook.svg',
                  onTap: () {},
                  title: "Войти через Facebook",
                ),
                SizedBox(
                  height: getPropScreenWidth(15),
                ),
                EnterOptionTile(
                  iconSvg: 'icons8-google.svg',
                  onTap: () {},
                  title: "Войти через Google",
                ),
                SizedBox(
                  height: getPropScreenWidth(15),
                ),
                EnterOptionTile(
                  iconSvg: 'icons8-apple-logo.svg',
                  onTap: () {},
                  title: "Войти через Apple",
                ),
                SizedBox(
                  height: getPropScreenWidth(30),
                ),
                const TextDivider(
                  text: "or",
                ),
                SizedBox(
                  height: getPropScreenWidth(30),
                ),
                DefaultButton(
                  onTap: () {},
                  text: "Войду через Svemble аккаунт",
                ),
                SizedBox(
                  height: getPropScreenWidth(30),
                ),
                const TextDivider(text: "Нет профиля в Svemble"),
                SizedBox(
                  height: getPropScreenWidth(5),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          30,
                        ),
                      ),
                      side: const BorderSide(color: kSecondaryColor),
                      foregroundColor: kPrimaryColor),
                  child: const Text(
                    "Зарегистрироваться",
                  ),
                ),
                SizedBox(
                  height: getPropScreenWidth(30),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextDivider extends StatelessWidget {
  final String text;
  const TextDivider({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Flexible(child: Divider()),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
            child: Text(
              text,
            )),
        const Flexible(child: Divider())
      ],
    );
  }
}

class EnterOptionTile extends StatelessWidget {
  final String iconSvg;
  final String title;
  final VoidCallback onTap;

  const EnterOptionTile({
    Key? key,
    required this.iconSvg,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: OutlineInputBorder(
          borderSide:
              const BorderSide(color: Color.fromARGB(255, 217, 216, 216)),
          borderRadius: BorderRadius.circular(getPropScreenWidth(10))),
      leading: SvgPicture.asset("assets/icons/$iconSvg"),
      title: Text(
        title,
        style: simpleTextStyle,
      ),
      onTap: onTap,
    );
  }
}
