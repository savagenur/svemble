import 'package:flutter/material.dart';
import 'package:svemble/constants.dart';
import 'package:svemble/screens/SpecialOffer/components/body.dart';
import 'package:svemble/size_config.dart';

class SpecialOfferScreen extends StatelessWidget {
  static const routeName = "/special-offer";
  const SpecialOfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        "Особые Акции",
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
