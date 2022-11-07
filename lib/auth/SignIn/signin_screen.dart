import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:svemble/auth/SignIn/components/body.dart';
import 'package:svemble/constants.dart';
import 'package:svemble/size_config.dart';

import '../../components/default_button.dart';
import '../../components/text_divider.dart';
import 'components/enter_option_tile.dart';

class SignInScreen extends StatelessWidget {
  static const routeName = "/sign-in";
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  Body(),
    );
  }
}
