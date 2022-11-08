import 'package:flutter/material.dart';
import 'package:svemble/constants.dart';
import 'package:svemble/screens/Home/components/body.dart';
import 'package:svemble/size_config.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leadingWidth: getPropScreenWidth(70),
      leading: Padding(
        padding: EdgeInsets.only(
            left: getPropScreenWidth(20), bottom: getPropScreenWidth(5)),
        child: const CircleAvatar(
          backgroundColor: kSecondaryColor,
          child: Icon(
            Icons.person,
            color: kPrimaryColor,
          ),
        ),
      ),
      centerTitle: false,
      title: Padding(
        padding: EdgeInsets.only(bottom: getPropScreenWidth(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Привет! 👋",
              style: TextStyle(fontSize: kDefaultFontSize),
            ),
            Text(
              "Нурболот",
              style: primaryTextStyle,
            ),
          ],
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_none),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite_border),
        ),
        SizedBox(
          width: getPropScreenWidth(10),
        ),
      ],
    );
  }
}
