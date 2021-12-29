import 'package:book_hotel_full_project/theme/imports/imports.dart';

Card hotelLargeCard(
  String hotelImg,
  String hotelName,
  String locationName,
  double milesFromCenter,
  String aboutRoom,
  int roomPrice,
) =>
    Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      shadowColor: kBlack,
      elevation: 2.0,
      child: SizedBox(
        height: getHeight(289.0),
        width: getWidth(338.0),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(10.0),
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                        hotelImg,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: getHeight(185.0),
                  width: getWidth(338.0),
                ),
                Positioned(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border_rounded,
                      color: kWhite,
                    ),
                  ),
                  top: getHeight(12.0),
                  right: getHeight(12.0),
                ),
                Positioned(
                  child: Chip(
                    backgroundColor: kPeach,
                    label: const Text(
                      "4.5",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 12.0,
                        color: kWhite,
                      ),
                    ),
                    onDeleted: () {},
                    deleteIcon: const Icon(
                      Icons.star_border_rounded,
                      color: kWhite,
                      size: 24.0,
                    ),
                  ),
                  right: getWidth(15.0),
                  bottom: getHeight(17.0),
                ),
                Positioned(
                  child: Text(
                    hotelName,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 22.0,
                      color: kWhite,
                    ),
                  ),
                  left: getWidth(15.59),
                  bottom: getHeight(15.09),
                ),
              ],
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(10.0),
                ),
                color: kWhite,
              ),
              height: getHeight(104.0),
              width: getWidth(338.0),
              padding: EdgeInsets.only(
                left: getWidth(15.0),
                top: getHeight(5.0),
                right: getWidth(17.0),
                bottom: getWidth(20.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "$locationName, $milesFromCenter miles from center",
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15.0,
                      color: kGrayDark,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "$aboutRoom\nNo prepayment",
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14.0,
                          color: kBlackText,
                        ),
                      ),
                      Text(
                        "\$ $roomPrice",
                        style: const TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 24.0,
                          color: kBlackPrice,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
