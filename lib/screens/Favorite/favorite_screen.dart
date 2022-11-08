import 'package:flutter/material.dart';
import 'package:svemble/constants.dart';
import 'package:svemble/screens/Favorite/components/body.dart';
import 'package:svemble/size_config.dart';

class FavoriteScreen extends StatelessWidget {
  static const routeName = "/favorite";
  const FavoriteScreen({super.key});

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
        "Избранные",
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
