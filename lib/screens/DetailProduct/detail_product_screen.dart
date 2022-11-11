import 'package:flutter/material.dart';
import 'package:svemble/screens/DetailProduct/components/body.dart';

class DetailProductScreen extends StatelessWidget {
  static const routeName = "/detail-product";
  const DetailProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(hasSize: true,),
    );
  }
}