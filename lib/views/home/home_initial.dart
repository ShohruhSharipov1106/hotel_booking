

import 'package:book_hotel_full_project/theme/imports/imports.dart';

// class HomeInitial extends StatelessWidget {
//   const HomeInitial({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     SizeConfig().init(context);
//     return Scaffold(
//       body: CustomScrollView(slivers: [
//         SliverAppBar(
//           title: Text(
//             "Find place that gives\nyou ultimate calm",
//           ),centerTitle: true,
//           toolbarHeight: getHeight(181.0),
//           flexibleSpace: Image.asset(
//             "assets/images/png_images/Home-gerson-repreza-CepDpEiALqM-unsplash.png",
//           ),
//         ),
//         SizedBox(
//           height: getHeight(200.0),
//           child: Material(
//             borderRadius: const BorderRadius.vertical(
//               top: Radius.circular(30.0),
//             ),
//             child: Padding(
//               padding: EdgeInsets.symmetric(
//                 horizontal: getHeight(18.0),
//                 vertical: getHeight(49.0),
//               ),
//               child: Column(
//                 children: [
//                   Form(
//                     child: Column(
//                       children: [
//                         SizedBox(
//                           width: getWidth(300.0),
//                           height: getHeight(200.0),
//                           child: Row(
//                             children: [
//                               Material(
//                                 child: TextFormField(initialValue: "Search",),
//                               ),
//                               DropdownButtonHideUnderline(
//                                 child: DropdownButton(
//                                   value: "Guests",
//                                   items: const [
//                                     DropdownMenuItem(
//                                       value: "Guests",
//                                       child: Text("Guests"),
//                                     ),
//                                     DropdownMenuItem(
//                                       value: "Guest",
//                                       child: Text("Guest"),
//                                     ),
//                                     DropdownMenuItem(
//                                       value: "Gues",
//                                       child: Text("Gues"),
//                                     ),
//                                   ],
//                                   onChanged: (v) {},
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   InkWell(
//                     child: Container(
//                       height: getHeight(70.0),
//                       width: getWidth(338.0),
//                       child: const Text(
//                         "Search a room",
//                         style: TextStyle(
//                           color: kWhite,
//                           fontSize: 24.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       decoration: BoxDecoration(
//                         gradient: kOrangeGradient,
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ]),
//     );
//   }
// }
