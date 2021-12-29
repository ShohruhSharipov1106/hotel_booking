import 'package:book_hotel_full_project/theme/imports/imports.dart';

class CheckOut1 extends StatelessWidget {
  const CheckOut1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: kBlackText,
            size: 22.0,
          ),
          onPressed: () {},
        ),
        title: const Text("Reservation"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getWidth(110.0),
              vertical: getHeight(52.0),
            ),
            child: Card(
              shape: CircleBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
