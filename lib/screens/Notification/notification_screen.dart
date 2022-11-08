import 'package:flutter/material.dart';
import 'package:svemble/constants.dart';
import 'package:svemble/screens/Notification/components/body.dart';
import 'package:svemble/size_config.dart';

class NotificationScreen extends StatelessWidget {
  static const routeName = "/notification";
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kSecondaryColor,
      title: Text(
        "Уведомления",
        style: headerTextStyle,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_horiz_rounded),
        ),
        SizedBox(
          width: getPropScreenWidth(10),
        ),
      ],
    );
  }
}
