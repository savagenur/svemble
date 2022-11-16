import 'package:flutter/material.dart';
import 'package:svemble/constants.dart';
import 'package:svemble/screens/OrdersInProcess/components/body.dart';

class OrdersInProcessScreen extends StatelessWidget {
  static const routeName = "/orders-in-process";
  const OrdersInProcessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     backgroundColor: kSecondaryColor,
      body: Body(),
    );
  }
}