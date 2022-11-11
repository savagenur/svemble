import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleAndFavoriteBtn extends StatelessWidget {
  const TitleAndFavoriteBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Mini Leather Bag",
          style: headerTextStyle.copyWith(fontSize: 28),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.favorite,
            size: 30,
          ),
        ),
      ],
    );
  }
}