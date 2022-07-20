import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:roqquclone/models/user.dart';
import 'package:roqquclone/models/wallet.dart';

import 'package:roqquclone/screens/overview_screen.dart';
import 'package:roqquclone/screens/savings_screen.dart';
import 'package:roqquclone/screens/settings_sreen.dart';
import 'package:roqquclone/screens/swap_screen_testing.dart';
import 'package:roqquclone/screens/transactions_screen.dart';
import 'package:roqquclone/screens/wallet_screen.dart';
import 'package:roqquclone/widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  static const routeName = '/tabsscreen';
  //TabsScreen({Key? key}) : super(key: key);
  final List<Wallet> userProfile;
  TabsScreen(this.userProfile);
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, dynamic>> _pages = [];
  int _selectedPageIndex = 0;
  // double userBalance;
  @override
  void initState() {
    _pages = [
      {'page': OverviewScreen(widget.userProfile), "title": 'Overview'},
      {'page': WalletScreen(), "title": 'Wallets'},
      {'page': SavingsScreen(), "title": 'Savings'},
      {'page': TransactionsScreen(), "title": 'Transactions'},
      {'page': SettingsScreen(), "title": 'Settings'},
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 100,
        backgroundColor: Theme.of(context).backgroundColor,
        title: Container(
          width: 90,
          height: 50,
          child: Image.asset('assets/images/roqqu_logo.jpg'),
        ),
        elevation: 0,
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Colors.white,
        selectedItemColor: Theme.of(context).backgroundColor,
        unselectedItemColor: Color.fromARGB(255, 112, 111, 111),
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle:
            TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
        elevation: 3,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Boxicons.bx_category_alt), label: 'Overview'),
          BottomNavigationBarItem(
              icon: Icon(Boxicons.bx_wallet_alt), label: 'Wallets'),
          BottomNavigationBarItem(
              icon: Icon(Boxicons.bxs_dollar_circle), label: 'Savings'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Transaction'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 52, 195, 56),
        child: Icon(
          Icons.message,
          size: 30,
        ),
        onPressed: () {},
      ),
    );
  }
}
