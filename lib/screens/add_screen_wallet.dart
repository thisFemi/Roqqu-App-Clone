import 'package:flutter/material.dart';

class AddWalletScreen extends StatefulWidget {
  static const routeName = '/addwalletscreen';
  AddWalletScreen({Key? key}) : super(key: key);

  @override
  State<AddWalletScreen> createState() => _AddWalletScreenState();
}

class _AddWalletScreenState extends State<AddWalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Add New Wallet'),
        backgroundColor: Theme.of(context).backgroundColor,
      ),
    );
  }
}
