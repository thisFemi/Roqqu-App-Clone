import 'package:flutter/material.dart';

class ReferralScreen extends StatelessWidget {
  static const routeName = '/referralscreen';
  const ReferralScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).backgroundColor),
    );
  }
}
