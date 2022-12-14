import 'package:flutter/material.dart';
import 'package:svemble/constants.dart';
import 'package:svemble/screens/NotificationProfile/components/body.dart';


class NotificationProfileScreen extends StatelessWidget {
  static const routeName = "/notification-profile";
  const NotificationProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        title: Text(
          "Уведомление",
          style: headerTextStyle,
        ),
      ),
      body: const Body(),
      
    );
  }
}








