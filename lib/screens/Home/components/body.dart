import 'package:flutter/material.dart';
import 'package:svemble/screens/Home/components/product_tile_list.dart';
import 'package:svemble/screens/Home/components/search_text_field.dart';
import 'package:svemble/size_config.dart';

import 'categories.dart';
import 'category_row_items.dart';
import 'offer_and_more_btn.dart';
import 'offer_images.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            const SearchTextField(),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
              child: OfferAndMoreBtn(
                title: "Особые Скидки",
                onTap: () {},
              ),
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            const OfferImages(),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            const Categories(),
            SizedBox(
              height: getPropScreenWidth(10),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
              child: OfferAndMoreBtn(
                title: "Самые Популярные",
                onTap: () {},
              ),
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            const CategoryRowItems(),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            const ProductTileList(),
            SizedBox(height: getPropScreenWidth(50),),
          ],
        ),
      ),
    );
  }
}
