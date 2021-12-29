import 'package:book_hotel_full_project/theme/imports/imports.dart';

Card Cards() {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5.0),
    ),
    shadowColor: kShadowColor,
    elevation: getHeight(5.0),
    child: SizedBox(
      height: getHeight(38.0),
      width: getWidth(38.0),
      child: SvgPicture.asset(
        "assets/icons/hotel/map.svg",
        height: getHeight(18.0),
        width: getWidth(15.0),
      ),
    ),
  );
}
