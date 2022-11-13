import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../components/linear_oval_staff.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import 'cart_item.dart';

class RemoveBottomSheet extends StatelessWidget {
  const RemoveBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          LinearOvalStaff(),
          SizedBox(
            height: getPropScreenWidth(15),
          ),
          Text(
            "Удалить из Корзины",
            style: headerTextStyle,
          ),
          SizedBox(
            height: getPropScreenWidth(15),
          ),
          Divider(),
          SizedBox(
            height: getPropScreenWidth(15),
          ),
          CartItem(hasDeleteBtn: false,),
          Divider(),
          SizedBox(
            height: getPropScreenWidth(15),
          ),
          SizedBox(
            width: SizeConfig.screenWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: DefaultButton(
                    text: "Отмена",
                    onTap: () {
                      Navigator.pop(context);
                    },
                    backgroundColor: kSecondaryColor,
                    textColor: kPrimaryColor,
                  ),
                ),
                SizedBox(width: getPropScreenWidth(10),),
                Expanded(
                  child: DefaultButton(
                      text: "Да, Удалить",
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: getPropScreenWidth(50),
          )
        ],
      ),
    );
  }
}