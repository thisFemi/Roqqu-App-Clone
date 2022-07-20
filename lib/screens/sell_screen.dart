import 'package:flutter/material.dart';

class SellScreen extends StatefulWidget {
  static const routeName = '/sellscreen';
  SellScreen({Key? key}) : super(key: key);

  @override
  State<SellScreen> createState() => _SellScreenState();
}

class _SellScreenState extends State<SellScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sell'),
        backgroundColor: Theme.of(context).backgroundColor,
      ),
    );
  }
}
