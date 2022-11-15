import 'package:flutter/material.dart';
import 'package:svemble/components/cart_item.dart';
import 'package:svemble/constants.dart';
import 'package:svemble/screens/Home/components/product_tile_list.dart';
import 'package:svemble/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: getPropScreenWidth(10),
            ),
            Divider(),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            Text(
              "Адрес доставки",
              style: primaryTextStyle,
            ),
            SizedBox(
              height: getPropScreenWidth(20),
            ),
            AddressTile(
              titleWidget: Text(
                "Дом",
                style: tertiaryBoldTextStyle,
              ),
              subtitle: "district Lenin, Ala-Archa N337",
              onTap: () {},
              iconData: Icons.edit,
            ),
            SizedBox(
              height: getPropScreenWidth(15),
            ),
            Divider(),
            SizedBox(
              height: getPropScreenWidth(15),
            ),
            Text(
              "Список заказа",
              style: primaryTextStyle,
            ),
            SizedBox(
              height: getPropScreenWidth(15),
            ),
            Column(
              children: [
                ...List.generate(
                  4,
                  (index) => CartItem(
                    isCheckoutScreen: true,
                  ),
                )
              ],
            ),
            Divider(),
            SizedBox(
              height: getPropScreenWidth(15),
            ),
            Text(
              "Доставка",
              style: primaryTextStyle,
            ),
            SizedBox(
              height: getPropScreenWidth(15),
            ),
            ListTile(
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(getPropScreenWidth(30))),
              contentPadding: EdgeInsets.symmetric(
                  vertical: getPropScreenWidth(10),
                  horizontal: getPropScreenWidth(15)),
              leading: Icon(
                Icons.delivery_dining,
                size: getPropScreenWidth(30),
                color: kPrimaryColor,
              ),
              title: Text(
                "Выберите тип доставки",
                style: tertiaryBoldTextStyle,
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_double_arrow_right,
                  color: kPrimaryColor,
                ),
              ),
            ),
            SizedBox(
              height: getPropScreenWidth(15),
            ),
            Divider(),
            SizedBox(
              height: getPropScreenWidth(15),
            ),
            ResultSumContainer(),
            SizedBox(
              height: getPropScreenWidth(20),
            )
          ],
        ),
      ),
    );
  }
}

class ResultSumContainer extends StatelessWidget {
  const ResultSumContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getPropScreenWidth(20)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(getPropScreenWidth(30)),
        color: Colors.white,
      ),
      child: Column(
        children: [
          TitleAndSum(
            title: "Сумма",
            sum: "16400 сом",
          ),
          SizedBox(
            height: getPropScreenWidth(15),
          ),
          TitleAndSum(
            title: "Доставка",
            sum: "-",
          ),
          SizedBox(
            height: getPropScreenWidth(15),
          ),
          Divider(),
          SizedBox(
            height: getPropScreenWidth(15),
          ),
          TitleAndSum(
            title: "Общая сумма",
            sum: "16400 сом",
          ),
         
        ],
      ),
    );
  }
}

class TitleAndSum extends StatelessWidget {
  final String title;
  final String sum;
  const TitleAndSum({
    Key? key,
    required this.title,
    required this.sum,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        Text(
          sum,
          style: tertiaryBoldTextStyle.copyWith(fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}

class AddressTile extends StatelessWidget {
  final Widget titleWidget;
  final String subtitle;
  final VoidCallback onTap;
  final IconData iconData;
  const AddressTile({
    Key? key,
    required this.titleWidget,
    required this.subtitle,
    required this.onTap,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getPropScreenWidth(30))),
      contentPadding: EdgeInsets.symmetric(
          vertical: getPropScreenWidth(10), horizontal: getPropScreenWidth(15)),
      leading: CircleAvatar(
        radius: getPropScreenWidth(25),
        backgroundColor: kSecondaryColor,
        child: CircleAvatar(
          backgroundColor: kPrimaryColor,
          child: Icon(
            Icons.location_on,
            color: Colors.white,
          ),
        ),
      ),
      title: titleWidget,
      subtitle: Padding(
          padding: EdgeInsets.only(top: getPropScreenWidth(10)),
          child: Text(
            subtitle,
            overflow: TextOverflow.ellipsis,
          )),
      trailing: IconButton(
        onPressed: onTap,
        icon: Icon(
          iconData,
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
