import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class CircleSmallBtn extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const CircleSmallBtn({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              30,
            ),
          ),
          side: const BorderSide(color: kBorderColor),
          foregroundColor: kPrimaryColor),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(10)),
        child: Text(
          text,
        ),
      ),
    );
  }
}
