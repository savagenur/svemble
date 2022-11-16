import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:svemble/screens/OrdersInProcess/components/order_tile.dart';
import 'package:svemble/size_config.dart';


class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
        child: Column(
          children: [
            SizedBox(height: getPropScreenWidth(20),),
            ...List.generate(3, (index) => OrderInProcessTile(),)
          ],
        ),
      ),
    );
  }
  
}

