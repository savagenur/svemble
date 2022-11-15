import 'package:flutter/material.dart';
import 'package:svemble/constants.dart';
import 'package:svemble/screens/ShippingAddress/components/body.dart';

import '../../components/default_button.dart';
import '../../size_config.dart';

class ShippingAddressScreen extends StatelessWidget {
  static const routeName = "/shipping-address";
  const ShippingAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kSecondaryColor,

      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        title: Text("Адрес доставки",style: headerTextStyle,),
      ),
      body: Body(),
      bottomNavigationBar: BottomAppBar(
    
      child: Padding(
        padding: EdgeInsets.all(getPropScreenWidth(20)),
        child: DefaultButton(text: "Применить", onTap: () {
              Navigator.pop(context);
            
          },),
      ),
    ),
    );
  }
}