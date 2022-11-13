import 'package:flutter/material.dart';
import 'package:svemble/screens/DetailProduct/components/body.dart';

import '../../components/bottom_price_button.dart';
import '../../components/default_button.dart';
import '../../constants.dart';
import '../../size_config.dart';

class DetailProductScreen extends StatelessWidget {
  static const routeName = "/detail-product";
  const DetailProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        hasSize: true,
      ),
      bottomNavigationBar: BottomPriceButton(price: 4500,
        buttonText: "Добавить в корзину",
        onTap: () {},
      ),
    );
  }
}


