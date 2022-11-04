import 'package:flutter/material.dart';
import 'package:svemble/size_config.dart';

const kPrimaryColor = Colors.black;
const kPrimaryLightColor = Colors.black54;
const kPrimaryGradientLightColor = 
  LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Colors.transparent, Colors.black87],
  )
;
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getPropScreenWidth(20),
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

final simpleTextStyle =
    TextStyle(fontSize: getPropScreenWidth(18), color: Colors.black);

const defaultDuration = Duration(milliseconds: 700);

// Form error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Введите ваш e-mail";
const String kInvalidEmailError = "Неверный e-mail";
const String kPassNullError = "Введите пароль";
const String kShortPassError = "Пароль слишком короткий";
const String kMatchPassError = "Пароли не совпадают";
const String kNullNameError = "Введите ваше имя";
const String kPhoneNumberNullError = "Введите ваш номер";
const String kAddressNullError = "Введите ваш адрес";

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(
      getPropScreenWidth(15),
    ),
    borderSide: const BorderSide(color: kTextColor),
  );
}