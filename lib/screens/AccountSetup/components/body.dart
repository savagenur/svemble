import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:svemble/components/default_button.dart';
import 'package:svemble/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: getPropScreenWidth(20),
        ),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                CircleAvatar(
                  radius: getPropScreenWidth(60),
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    "assets/images/user.png",
                  ),
                ),
                Positioned(
                  right: -5,
                  bottom: -3,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          getPropScreenWidth(10),
                        ),
                      ),
                      padding: EdgeInsets.all(0),
                    ),
                    onPressed: () {},
                    child: Icon(
                      Icons.edit,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Полное имя",
              ),
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Ваш Ник",
              ),
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(getPropScreenWidth(10)),
              onTap: () {},
              child: TextFormField(
                enabled: false,
                decoration: InputDecoration(
                  hintText: "День рождение",
                  suffixIcon: Icon(Icons.calendar_month),
                ),
              ),
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Электронный адрес",
                suffixIcon: Icon(Icons.mail),
              ),
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: getPropScreenWidth(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "🇰🇬",
                        style: TextStyle(fontSize: getPropScreenWidth(30)),
                      ),
                      Icon(Icons.arrow_drop_down_rounded)
                    ],
                  ),
                ),
                hintText: "Телефонный номер",
              ),
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            InkWell(
              onTap: () {
                
              },
              borderRadius: BorderRadius.circular(getPropScreenWidth(10)),

              child: TextFormField(
                decoration: InputDecoration(
                  enabled: false,
                  hintText: "Ваш пол",
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_drop_down_rounded,
                      size: getPropScreenWidth(30),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: getPropScreenWidth(40),
            ),
            DefaultButton(
              text: "Готово",
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
