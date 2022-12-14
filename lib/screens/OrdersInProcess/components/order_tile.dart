import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:svemble/screens/OrdersInProcess/components/leave_comment_sheet.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class OrderInProcessTile extends StatelessWidget {
  final bool isCompletedScreen;
  const OrderInProcessTile({super.key, this.isCompletedScreen = false});

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
            buildImage(),
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
                        "Dolce Cardigans",
                        style: tertiaryBoldTextStyle,
                        overflow: TextOverflow.ellipsis,
                      ),
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
                        decoration: const BoxDecoration(
                          color: Colors.brown,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(
                        width: getPropScreenWidth(10),
                      ),
                      Expanded(
                        child: Text(
                          "????????  |  ???????????? = M  |  ???????????????????? = 1",
                          style:
                              quaternaryTextStyle.copyWith(color: kTextColor),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: getPropScreenWidth(10),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: getPropScreenWidth(10),
                        vertical: getPropScreenWidth(5)),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(getPropScreenWidth(10)),
                      color: kSecondaryColor,
                    ),
                    child: Text(
                      isCompletedScreen ? "????????????" : "?? ????????",
                      style: quaternaryTextStyle,
                    ),
                  ),
                  SizedBox(
                    height: getPropScreenWidth(10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: AutoSizeText(
                          "3560 ??????",
                          maxFontSize: kTertiaryFontSize,
                          minFontSize: kTertiaryFontSize - 2,
                          maxLines: 1,
                          style: tertiaryBoldTextStyle,
                        ),
                      ),
                      isCompletedScreen
                          ? TextButton(
                              style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    getPropScreenWidth(20)),
                                side: const BorderSide(color: kPrimaryColor),
                              )),
                              onPressed: () {
                                showModalBottomSheet(
                                  constraints: BoxConstraints(maxHeight: SizeConfig.screenHeight*.9,),
                                  isScrollControlled: true,
                                  context: context,
                                  builder: (context) => const LeaveCommentSheet(),
                                );
                              },
                              child: const Text(
                                "???????????????? ??????????",
                                style: TextStyle(color: kPrimaryColor),
                              ))
                          : Container(),
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

  Container buildImage() {
    return Container(
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
    );
  }
}
