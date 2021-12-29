import 'package:book_hotel_full_project/theme/imports/imports.dart';

Stack hotelMediumCard(
  String mediumHotelImg,
  String mediumHotelName,
  String mediumHotelLocation,
  int mediumHotelPrice,
  double mediumHotelRating,
) =>
    Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: AssetImage(
                mediumHotelImg,
              ),
              fit: BoxFit.cover,
            ),
          ),
          height: getHeight(185.0),
          width: getWidth(265.0),
        ),
        Positioned(
          child: Text(
            mediumHotelName,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20.0,
              color: kWhite,
            ),
          ),
          bottom: getHeight(40.0),
          left: getHeight(15.0),
        ),
        Positioned(
          child: Padding(
            padding: EdgeInsets.only(
              top: getHeight(5.0),
              right: getWidth(113.0),
            ),
            child: Text(
              mediumHotelLocation,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
                color: kWhite,
              ),
            ),
          ),
          left: getWidth(15.0),
          bottom: getHeight(14.0),
        ),
        Positioned(
          child: Padding(
            padding: EdgeInsets.only(
              right: getWidth(12.0),
            ),
            child: Text(
              "\$$mediumHotelPrice~",
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14.0,
                color: kWhite,
              ),
            ),
          ),
          right: getWidth(64.0),
          bottom: getHeight(14.0),
        ),
        Positioned(
          child: SizedBox(
            height: getHeight(16.0),
            width: getWidth(35.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "$mediumHotelRating",
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.0,
                    color: kWhite,
                  ),
                ),
                 Icon(
                  Icons.star_rate_rounded,
                  size: 15.0,
                  color: kWhite.withOpacity(0.5),
                ),
              ],
            ),
          ),
          right: getWidth(17.49),
          bottom: getHeight(14.0),
        ),
      ],
    );
