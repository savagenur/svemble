import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Поиск",
          prefixIcon: const Icon(Icons.search),
          suffixIcon: IconButton(
            onPressed: () {
            },
            icon: const Icon(
              Icons.filter_alt_outlined,
              color: kPrimaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
