import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'remove_bottom_sheer.dart';
import 'small_remove_and_add_btn.dart';

class CartItem extends StatelessWidget {
  final bool hasDeleteBtn;
  const CartItem({
    Key? key,  this.hasDeleteBtn=true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: getPropScreenWidth(20)),
      child: Container(
        padding: EdgeInsets.all(getPropScreenWidth(20)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(getPropScreenWidth(30)),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(getPropScreenWidth(5)),
              width: getPropScreenWidth(100),
              decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(getPropScreenWidth(20))),
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset(
                  "assets/images/28-jacket-png-image.png",
                  width: 30,
                ),
              ),
            ),
            SizedBox(
              width: getPropScreenWidth(20),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Werolla Cardigans",
                        style: tertiaryBoldTextStyle,
                        overflow: TextOverflow.ellipsis,
                      ),
                     hasDeleteBtn? GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(
                                    getPropScreenWidth(40),
                                  ),
                                  topRight: Radius.circular(
                                    getPropScreenWidth(40),
                                  ),
                                )),
                                builder: (context) {
                                  return RemoveBottomSheet();
                                });
                          },
                          child: Icon(Icons.delete)):Container(),
                    ],
                  ),
                  SizedBox(
                    height: getPropScreenWidth(10),
                  ),
                  Row(
                    children: [
                      Container(
                        width: getPropScreenWidth(16),
                        height: getPropScreenWidth(16),
                        decoration: BoxDecoration(
                          color: Colors.brown,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(
                        width: getPropScreenWidth(10),
                      ),
                      Text(
                        "Цвет  |  Размер = M",
                        style: quaternaryTextStyle.copyWith(color: kTextColor),
                      )
                    ],
                  ),
                  SizedBox(
                    height: getPropScreenWidth(10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: AutoSizeText(
                          "3560 сом",
                          maxFontSize: kTertiaryFontSize,
                          minFontSize: kTertiaryFontSize - 3,
                          maxLines: 1,
                          style: tertiaryBoldTextStyle,
                        ),
                      ),
                      const SmallRemoveAndAddBtn(),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}