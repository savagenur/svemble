import 'package:flutter/material.dart';

import '../../../data/colors.dart';
import '../../../size_config.dart';

class ColorList extends StatelessWidget {
  const ColorList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(getPropScreenWidth(30)),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: allColors
              .map(
                (color) => GestureDetector(
                  onTap: () {},
                  child: Padding(
                      padding: EdgeInsets.only(right: getPropScreenWidth(10)),
                      child: Container(
                        height: getPropScreenWidth(35),
                        width: getPropScreenWidth(35),
                        padding: EdgeInsets.all(getPropScreenWidth(5)),
                        decoration: BoxDecoration(
                          color: color,
                          shape: BoxShape.circle,
                        ),
                        child: color == Colors.black
                            ? const Icon(
                                Icons.check,
                                color: Colors.white,
                              )
                            : null,
                      )),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}