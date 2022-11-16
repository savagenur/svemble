import 'package:flutter/material.dart';
import 'package:svemble/constants.dart';
import 'package:svemble/data/profile_items.dart';
import 'package:svemble/screens/EditProfile/edit_profile_screen.dart';
import 'package:svemble/size_config.dart';

import '../../../components/profile_avatar_with_btn.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeaderProfile(),
        Expanded(
          child: ListView.builder(
            itemCount: allProfileItems.length,
            itemBuilder: (BuildContext context, int index) {
              var profileItem = allProfileItems[index];
              return ListTile(
                onTap: () {
                  Navigator.pushNamed(context, profileItem["routeName"]);
                },
                minLeadingWidth: 0,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
                leading: Icon(
                  profileItem["icon"],
                  color: kPrimaryColor,
                ),
                title: Text(
                  profileItem["title"],
                  style: defaultTextStyle,
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_right_sharp,
                  color: kPrimaryColor,
                ),
              );
            },
          ),
        ),
        ListTile(
          onTap: () {},
          minLeadingWidth: 0,
          contentPadding:
              EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
          leading: const Icon(
            Icons.logout_outlined,
            color: Colors.red,
          ),
          title: Text(
            "Выйти из Аккаунта",
            style: defaultTextStyle.copyWith(color: Colors.red),
          ),
        ),
        SizedBox(
          height: getPropScreenWidth(10),
        )
      ],
    );
  }
}

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileAvatarWithBtn(
          imageWidget: Image.asset(
            "assets/images/user.png",
          ),
          onTap: () {},
        ),
        SizedBox(
          height: getPropScreenWidth(15),
        ),
        Text(
          "Nurbolot Muratbekuulu",
          style: headerTextStyle,
        ),
        SizedBox(
          height: getPropScreenWidth(10),
        ),
        Text(
          "+996 666 991",
          style: tertiaryTextStyle.copyWith(color: kPrimaryColor),
        ),
        SizedBox(
          height: getPropScreenWidth(15),
        ),
        const Divider(),
      ],
    );
  }
}
