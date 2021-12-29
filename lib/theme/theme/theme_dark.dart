import 'package:book_hotel_full_project/theme/imports/imports.dart';

ThemeData themeDark() => ThemeData(
      brightness: Brightness.dark,
      primaryColor: kDarkBackground,
      cardTheme: const CardTheme(
        color: kDarkBackground,
        shadowColor: kBlack,
        elevation: 5.0,
      ),
      textTheme: const TextTheme(
        bodyText1: TextStyle(
          color: kGray,
          fontWeight: FontWeight.w600,
          fontSize: 20.0,
        ),
        headline1: TextStyle(
          color: kWhite,
          fontWeight: FontWeight.w700,
          fontSize: 28.0,
        ),
      ),
      fontFamily: "Nunito",
    );
