import 'package:flutter/material.dart';

class SendScreen extends StatefulWidget {
  static const routeName = '/sendscreen';
  SendScreen({Key? key}) : super(key: key);

  @override
  State<SendScreen> createState() => _SendScreenState();
}

class _SendScreenState extends State<SendScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Send'),
        backgroundColor: Theme.of(context).backgroundColor,
      ),
    );
  }
}
