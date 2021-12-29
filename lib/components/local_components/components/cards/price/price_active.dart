import 'package:book_hotel_full_project/theme/imports/imports.dart';

Container activePrice(int price_Price) => Container(
      width: getWidth(84.0),
      height: getHeight(35.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
        gradient: kOrangeGradient,
      ),
      alignment: Alignment.center,
      child: Text(
        "\$$price_Price+",
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 17.0,
          color: kWhite,
        ),
      ),
    );
