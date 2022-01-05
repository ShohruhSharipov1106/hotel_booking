
import 'package:book_hotel_full_project/theme/imports/imports.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeChangerProvider()),
        ChangeNotifierProvider(create: (context) => CheckOut1Provider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hotel Booking',
      debugShowCheckedModeBanner: false,
      theme: themeLight(),
      darkTheme: themeDark(),
      themeMode: context.watch<ThemeChangerProvider>().themeMode,
      home: CheckOut1(),
    );
  }
}
