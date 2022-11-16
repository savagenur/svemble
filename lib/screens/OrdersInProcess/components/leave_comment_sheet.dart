import 'package:flutter/material.dart';
import 'package:svemble/screens/OrdersInProcess/components/order_tile.dart';

import '../../../components/default_button.dart';
import '../../../components/linear_oval_staff.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class LeaveCommentSheet extends StatefulWidget {
  const LeaveCommentSheet({
    Key? key,
  }) : super(key: key);

  @override
  State<LeaveCommentSheet> createState() => _LeaveCommentSheetState();
}

class _LeaveCommentSheetState extends State<LeaveCommentSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const LinearOvalStaff(),
          SizedBox(
            height: getPropScreenWidth(15),
          ),
          Text(
            "Оставить отзыв",
            style: headerTextStyle,
          ),
          SizedBox(
            height: getPropScreenWidth(15),
          ),
          const Divider(),
          SizedBox(
            height: getPropScreenWidth(15),
          ),
          const OrderInProcessTile(isCompletedScreen: false),
          const Divider(),
          SizedBox(
            height: getPropScreenWidth(15),
          ),

          Text(
            "Довольны ли вы продуктом?",
            style: headerTextStyle,
          ),

          SizedBox(
            height: getPropScreenWidth(15),
          ),

          const Text(
            "Пожалуйста оцените товар и оставьте отзыв...",
          ),
          SizedBox(
            height: getPropScreenWidth(15),
          ),
          SizedBox(
            width: SizeConfig.screenWidth * .7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ...List.generate(
                  5,
                  (index) => Icon(
                    Icons.star,
                    size: getPropScreenWidth(32),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: getPropScreenWidth(15),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "Введите текст...",
                suffixIcon: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.image_rounded))),
          ),

          SizedBox(
            height: getPropScreenWidth(15),
          ),
          const Divider(),
          SizedBox(
            height: getPropScreenWidth(15),
          ),

// Button Row

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
                SizedBox(
                  width: getPropScreenWidth(10),
                ),
                Expanded(
                  child: DefaultButton(
                    text: "Подтвердить",
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
