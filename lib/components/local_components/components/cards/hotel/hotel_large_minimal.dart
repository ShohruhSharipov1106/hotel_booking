import 'package:book_hotel_full_project/theme/imports/imports.dart';

Stack hotelLargeMinimalCard(
  String largeMinimalImg,
  String largeMinimalName,
) =>
    Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: AssetImage(
                largeMinimalImg,
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
            largeMinimalName,
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
    );
