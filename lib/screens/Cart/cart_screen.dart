import 'package:flutter/material.dart';
import 'package:svemble/components/bottom_price_button.dart';
import 'package:svemble/screens/Cart/components/body.dart';

import '../../constants.dart';
import '../../size_config.dart';

class CartScreen extends StatelessWidget {
  static const routeName = "/cart";
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: kSecondaryColor,      
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: BottomPriceButton(price: 14300, buttonText: "Оплатить", onTap: () {
        
      },),
    );
  }
  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      backgroundColor: kSecondaryColor,
      title: Text(
        "Моя Корзина",
        style: headerTextStyle,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        SizedBox(
          width: getPropScreenWidth(10),
        ),
      ],
    );
  }
}