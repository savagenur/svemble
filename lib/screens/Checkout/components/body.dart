import 'package:flutter/material.dart';
import 'package:svemble/components/cart_tile.dart';
import 'package:svemble/constants.dart';
import 'package:svemble/screens/ChooseShipping/choose_shipping_screen.dart';
import 'package:svemble/screens/ShippingAddress/shipping_address_screen.dart';
import 'package:svemble/size_config.dart';

import 'result_sum_container.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: getPropScreenWidth(10),
            ),
            const Divider(),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            Text(
              "Адрес доставки",
              style: primaryTextStyle,
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            ListTile(
              tileColor: Colors.white,
              leading: CircleAvatar(
                radius: getPropScreenWidth(25),
                backgroundColor: kSecondaryColor,
                child: const CircleAvatar(
                  backgroundColor: kPrimaryColor,
                  child: Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                ),
              ),
              title: Text(
                "Дом",
                style: tertiaryBoldTextStyle,
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top: getPropScreenWidth(10)),
                child: const Text(
                  "district Lenin, Ala-Archa N337",
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              trailing: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, ShippingAddressScreen.routeName);
                  },
                  icon: Icon(
                    Icons.edit,
                    color: kPrimaryColor,
                  )),
            ),
            SizedBox(
              height: getPropScreenWidth(15),
            ),
            const Divider(),
            SizedBox(
              height: getPropScreenWidth(15),
            ),
            Text(
              "Список заказа",
              style: primaryTextStyle,
            ),
            SizedBox(
              height: getPropScreenWidth(15),
            ),
            Column(
              children: [
                ...List.generate(
                  4,
                  (index) => const CartTile(
                    isCheckoutScreen: true,
                  ),
                )
              ],
            ),
            const Divider(),
            SizedBox(
              height: getPropScreenWidth(15),
            ),
            Text(
              "Доставка",
              style: primaryTextStyle,
            ),
            SizedBox(
              height: getPropScreenWidth(15),
            ),
            ListTile(
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(getPropScreenWidth(30))),
              contentPadding: EdgeInsets.symmetric(
                  vertical: getPropScreenWidth(10),
                  horizontal: getPropScreenWidth(15)),
              leading: Icon(
                Icons.delivery_dining,
                size: getPropScreenWidth(30),
                color: kPrimaryColor,
              ),
              title: Text(
                "С доставкой",
                style: tertiaryBoldTextStyle,
              ),
              trailing: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, ChooseShippingScreen.routeName);
                },
                icon: const Icon(
                  Icons.keyboard_double_arrow_right,
                  color: kPrimaryColor,
                ),
              ),
            ),
            SizedBox(
              height: getPropScreenWidth(15),
            ),
            const Divider(),
            SizedBox(
              height: getPropScreenWidth(15),
            ),
            const ResultSumContainer(),
            SizedBox(
              height: getPropScreenWidth(20),
            )
          ],
        ),
      ),
    );
  }
}
