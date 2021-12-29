import 'package:book_hotel_full_project/theme/imports/imports.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Card(
              child: SizedBox(
                width: getWidth(375.0),
                height: getHeight(82.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage(
                        "assets/images/png_images/Home-gerson-repreza-CepDpEiALqM-unsplash.png",
                      ),
                    ),
                    SizedBox(
                      width: getWidth(30.0),
                    ),
                    const Text(
                      "Jane Doe",
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: kBlackText,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            roomLarge(),
            _settingCard(
              "assets/icons/user/favorite_icon.svg",
              "Your favourite",
            ),
            _settingCard(
              "assets/icons/user/help_icon.svg",
              "Payment",
            ),
            _settingCard(
              "assets/icons/user/payment_icon.svg",
              "Help",
            ),
            _settingCard(
              "assets/icons/user/promotion_icon.svg",
              "Promotions",
            ),
            _settingCard(
              "assets/icons/user/settings_icon.svg",
              "Settings",
            ),
          ],
        ),
      ),
    );
  }

  ListTile _settingCard(String svgIcons, String name) {
    return ListTile(
      leading: SvgPicture.asset(
        svgIcons,
        fit: BoxFit.cover,
        width: getWidth(21.0),
        height: getHeight(17.0),
      ),
      minLeadingWidth: getWidth(15.0),
      title: Text(
        name,
        style: ThemeData().textTheme.bodyText1,
      ),
      onTap: () {},
    );
  }
}
