import 'package:book_hotel_full_project/theme/imports/imports.dart';

SizedBox roomLarge() => SizedBox(
  
      height: getHeight(486.0),
      width: getWidth(338.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: getHeight(185.0),
            width: getWidth(338.0),
            child: const DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(10.0),
                ),
                color: kWhite,
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/png_images/Hotel-Medium-Background.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              position: DecorationPosition.foreground,
            ),
          ),
          Stack(
            children: [
              SizedBox(
                height: getHeight(301.0),
                width: getWidth(338.0),
                child: const DecoratedBox(
                  decoration: BoxDecoration(
                    color: kWhite,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(10.0),
                    ),
                  ),
                ),
              ),
              Positioned(
                child: Text(
                  "Standard King Room",
                  style: ThemeData().textTheme.bodyText2,
                ),
                top: getHeight(27.81),
                left: getWidth(18.0),
              ),
              Positioned(
                child: SvgPicture.asset(
                  "assets/icons/hotel_room/pricing.svg",
                  height: getHeight(19.38),
                  width: getWidth(19.38),
                  fit: BoxFit.cover,
                ),
                top: getHeight(27.81),
                right: getWidth(16.81),
              ),
              Positioned(
                  child: Card(
                child: Column(
                  children: [
                    _roomOptionsCard(
                      "assets/icons/hotel_room/refundable.svg",
                      "Refundable",
                    ),
                    _roomOptionsCard(
                      "assets/icons/hotel_room/breakfast.svg",
                      "Breakfast included",
                    ),
                    _roomOptionsCard(
                      "assets/icons/hotel_room/wi-fi.svg",
                      "Wi-Fi",
                    ),
                    _roomOptionsCard(
                      "assets/icons/hotel_room/air-conditioner.svg",
                      "Air Conditioner",
                    ),
                    _roomOptionsCard(
                      "assets/icons/hotel_room/bath.svg",
                      "Bath",
                    ),
                  ],
                ),
              ),),
            ],
          ),
        ],
      ),
    );

ListTile _roomOptionsCard(
  String _roomOptionsIcon,
  String _roomOptionsName,
) {
  return ListTile(
    leading: SvgPicture.asset(
      _roomOptionsIcon,
      width: getWidth(14.0),
      height: getHeight(14.0),
      fit: BoxFit.cover,
    ),
    title: Text(
      _roomOptionsName,
      style: const TextStyle(
        color: kGrayDark,
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
