import 'package:flutter/material.dart';
import 'package:svemble/screens/DetailProduct/components/body.dart';

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
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Сумма"),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "4500 сом",
                    style: headerTextStyle,
                  ),
                ],
              ),
              SizedBox(
                width: getPropScreenWidth(30),
              ),
              Expanded(
                  child:
                      DefaultButton(text: "Добавить в корзину", onTap: () {}))
            ],
          ),
        ),
      ),
    );
  }
}
