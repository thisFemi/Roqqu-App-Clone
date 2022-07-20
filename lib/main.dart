import 'package:flutter/material.dart';

import 'package:roqquclone/screens/add_screen_wallet.dart';
import 'package:roqquclone/screens/buy_screen.dart';
import 'package:roqquclone/screens/deposit_screen.dart';
import 'package:roqquclone/screens/referral_screen.dart';
import 'package:roqquclone/screens/sell_screen.dart';
import 'package:roqquclone/screens/send_screen.dart';
import 'package:roqquclone/screens/swap_screen.dart';
import 'package:roqquclone/screens/tabs_screen.dart';
import 'package:roqquclone/screens/transfer_screen.dart';
import 'package:roqquclone/screens/welcome_page.dart';
import 'package:roqquclone/screens/withdraw_sreen.dart';

import 'models/wallet.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //const MyApp({Key? key}) : super(key: key);
  Color mainColor = Color.fromARGB(255, 3, 2, 47);
  List<Wallet> userDetails = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue, backgroundColor: mainColor),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (ctx) => WelcomePage(),
        TabsScreen.routeName: (ctx) => TabsScreen(userDetails),
        DepositScreen.routeName: (ctx) => DepositScreen(),
        BuyScreen.routeName: (ctx) => BuyScreen(),
        SellScreen.routeName: (ctx) => SellScreen(),
        SendScreen.routeName: (ctx) => SendScreen(),
        AddWalletScreen.routeName: (ctx) => AddWalletScreen(),
        ReferralScreen.routeName: (ctx) => ReferralScreen(),
        WithdrawScreen.routeName: (ctx) => WithdrawScreen(),
        TransferScreen.routeName: (ctx) => TransferScreen(),
        SwapScreen.routeName: (ctx) => SwapScreen()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  //const MyHomePage({Key? key, }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
