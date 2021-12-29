import 'package:book_hotel_full_project/theme/imports/imports.dart';

Container stepsInActive(int steps) => Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: kGrayLight,
      ),
      height: getHeight(36.0),
      width: getWidth(36.0),
      alignment: Alignment.center,
      child: Text(
        "$steps",
        style: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 18.0,
          color: kGray,
        ),
      ),
    );
