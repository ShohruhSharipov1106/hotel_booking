import 'package:book_hotel_full_project/theme/imports/imports.dart';

SizedBox hotelSmallCard(
  String smallHotelImg,
  String smallHotelName,
  double smallHotelRating,
) =>
    SizedBox(
      height: getHeight(117.0),
      width: getWidth(197.0),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: getHeight(9.0),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                image: AssetImage(
                  smallHotelImg,
                ),
                fit: BoxFit.cover,
              ),
            ),
            height: getHeight(108.0),
            width: getWidth(197.0),
          ),
          Positioned(
            child: Container(
              width: getWidth(50.0),
              height: getHeight(23.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                gradient: kOrangeGradient,
              ),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$smallHotelRating",
                    style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 12.0,
                      color: kWhite,
                    ),
                  ),
                  const Icon(
                    Icons.star_rate_rounded,
                    size: 15.0,
                    color: kCream,
                  ),
                ],
              ),
            ),
            right: getWidth(0.0),
            top: getHeight(0.0),
          ),
          Positioned(
            child: Text(
              smallHotelName,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16.0,
                color: kWhite,
              ),
            ),
            left: getWidth(12.0),
            bottom: getHeight(10.0),
          ),
        ],
      ),
    );
