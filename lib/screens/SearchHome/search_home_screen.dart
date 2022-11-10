import 'package:flutter/material.dart';
import 'package:svemble/constants.dart';
import 'package:svemble/screens/SearchHome/components/body.dart';

class SearchHomeScreen extends StatelessWidget {
  static const routeName = "/search-home";
  const SearchHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Svemble",style: headerTextStyle,),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
