import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:svemble/constants.dart';

import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final double width;

  const DefaultButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.width = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: getPropScreenWidth(15)),
          child: AutoSizeText(
            text,
            style: const TextStyle(
              fontSize: kPrimaryFontSize,
              fontWeight: FontWeight.bold,
            ),
            minFontSize: kDefaultFontSize,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
