import 'package:book_hotel_full_project/theme/imports/imports.dart';

Container inactivePrice(int pricePrice) => Container(
      width: getWidth(84.0),
      height: getHeight(35.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
        color: kGrayLight,
      ),
      alignment: Alignment.center,
      child: Text(
        "\$$pricePrice+",
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 17.0,
          color: kGray,
        ),
      ),
    );
