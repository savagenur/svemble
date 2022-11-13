import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:svemble/components/default_button.dart';
import 'package:svemble/screens/DetailProduct/components/remove_and_add.dart';
import 'package:svemble/constants.dart';
import 'package:svemble/size_config.dart';

import '../../../components/linear_oval_staff.dart';
import 'cart_item.dart';
import 'small_remove_and_add_btn.dart';

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
            SizedBox(
              height: getPropScreenWidth(10),
            ),
            ...List.generate(
              10,
              (index) => CartItem(),
            )
          ],
        ),
      ),
    );
  }
}




