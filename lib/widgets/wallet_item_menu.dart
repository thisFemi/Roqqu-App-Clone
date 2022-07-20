import 'package:flutter/material.dart';

class WalletMenu extends StatefulWidget {
  WalletMenu({Key? key}) : super(key: key);

  @override
  State<WalletMenu> createState() => _WalletMenuState();
}

class _WalletMenuState extends State<WalletMenu> {
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 4,
        child: Container(
          padding: EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
              bottom: MediaQuery.of(context).viewInsets.bottom + 10),
          child: Column(
            children: [],
          ),
        ));
  }
}
