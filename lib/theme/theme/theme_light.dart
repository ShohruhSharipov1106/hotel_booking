import 'package:book_hotel_full_project/theme/imports/imports.dart';

ThemeData themeLight() => ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: kCreamLight,
      listTileTheme: ListTileThemeData(
        tileColor: kWhite,
        minLeadingWidth: getWidth(15.0),
      ),
      cardTheme: const CardTheme(
        color: kCreamLight,
        shadowColor: kCream,
        elevation: 5.0,
      ),
      textTheme: const TextTheme(
        bodyText1: TextStyle(
          color: kBlackText,
          fontWeight: FontWeight.w600,
          fontSize: 20.0,
        ),
        bodyText2: TextStyle(
          color: kBlackText,
          fontWeight: FontWeight.w700,
          fontSize: 22.0,
        ),
        headline1: TextStyle(
          color: kBlackText,
          fontWeight: FontWeight.w700,
          fontSize: 28.0,
        ),
      ),
      fontFamily: "Nunito",
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: kCreamLight,
        elevation: 3.0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
