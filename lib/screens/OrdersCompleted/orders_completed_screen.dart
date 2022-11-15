import 'package:flutter/material.dart';
import 'package:svemble/constants.dart';
import 'package:svemble/screens/OrdersCompleted/components/body.dart';

class OrdersCompletedScreen extends StatelessWidget {
  static const routeName = "/orders-completed";
  const OrdersCompletedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: kSecondaryColor,
      body: Body(),
    );
  }
}