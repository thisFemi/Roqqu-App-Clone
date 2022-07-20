// import 'package:crypto_font_icons/crypto_font_icons.dart';
// import 'package:flutter/material.dart';
// import 'package:roqquclone/screens/overview_screen.dart';

// class SettingsScreen extends StatefulWidget {
//   SettingsScreen({Key? key}) : super(key: key);

//   @override
//   State<SettingsScreen> createState() => _SettingsScreenState();
// }

// class _SettingsScreenState extends State<SettingsScreen> {
//   dynamic _calleditemIcon;
//   _callitem(dynamic item, String calledtitle) {
//     Navigator.pop(context);
//     setState(() {
//       _calleditemIcon = item;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           body: Center(
//         child: Row(children: [
//           GestureDetector(
//             onTap: () => _callBottomSheet(),
//             child: CircleAvatar(
//                 child: Icon(_calleditemIcon),
//                 backgroundColor: Color.fromARGB(255, 255, 90, 1)),
//           ),
//           Text(
//             // _selecteditemBal.toString()
//             '',
//             style: TextStyle(fontSize: 15),
//           ),
//         ]),
//       )),
//     );
//   }

//   void _callBottomSheet() {
//     showModalBottomSheet(
//         context: context,
//         builder: (context) {
//           return Column(
//             children: [
//               Card(
//                   child: ListTile(
//                 onTap: _callitem(CryptoFontIcons.BTC, 'BTC'),
//                 leading: CircleAvatar(
//                     backgroundColor: Color.fromARGB(255, 255, 90, 1),
//                     child: Icon(CryptoFontIcons.BTC, color: Colors.white)),
//               )),
//               Card(
//                   child: ListTile(
//                 onTap: _callitem(CryptoFontIcons.BTC, 'BTC'),
//                 leading: CircleAvatar(
//                     backgroundColor: Color.fromARGB(255, 255, 90, 1),
//                     child: Icon(CryptoFontIcons.BTC, color: Colors.white)),
//               )),
//               Card(
//                   child: ListTile(
//                 onTap: _callitem(CryptoFontIcons.BTC, 'BTC'),
//                 leading: CircleAvatar(
//                     backgroundColor: Color.fromARGB(255, 255, 90, 1),
//                     child: Icon(CryptoFontIcons.BTC, color: Colors.white)),
//               )),
//               Card(
//                   child: ListTile(
//                 leading: CircleAvatar(
//                     backgroundColor: Color.fromARGB(255, 255, 90, 1),
//                     child: Icon(CryptoFontIcons.BTC, color: Colors.white)),
//               )),
//               Card(
//                   child: ListTile(
//                 onTap: _callitem(CryptoFontIcons.BTC, 'BTC'),
//                 leading: CircleAvatar(
//                     backgroundColor: Color.fromARGB(255, 255, 90, 1),
//                     child: Icon(CryptoFontIcons.BTC, color: Colors.white)),
//               )),
//               // buildWalletTypes('ETH', Icons.abc_rounded, Colors.green),
//               // buildWalletTypes('BTC', Icons.cabin_sharp, Colors.green)
//             ],
//           );
//         });
//   }

//   // Card buildWalletTypes(String title, IconData icon, Color iconColor) {
//   //   return Card(
//   //       child: ListTile(
//   //     onTap: _callitem(
//   //       icon,
//   //       title,
//   //     ),
//   //     leading: CircleAvatar(
//   //         backgroundColor: Color.fromARGB(255, 255, 90, 1),
//   //         child: Icon(icon, color: Colors.white)),
//   //   ));
//   // }

// }
