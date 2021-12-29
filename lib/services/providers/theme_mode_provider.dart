import 'package:book_hotel_full_project/theme/imports/imports.dart';

class ThemeChangerProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  bool isLight = true;
  timeChanger() {
    if (isLight) {
      themeMode = ThemeMode.light;
      isLight = !isLight;
    } else {
      themeMode = ThemeMode.dark;
      isLight = !isLight;
    }
    notifyListeners();
  }
}
