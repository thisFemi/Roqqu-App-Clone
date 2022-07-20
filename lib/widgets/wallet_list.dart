import 'package:flutter/material.dart';
import '../models/wallet.dart';
import 'wallet_item.dart';

class WalletList extends StatelessWidget {
  //const WalletList({Key? key}) : super(key: key);
  final List<Wallet> walletTypes;
  WalletList(this.walletTypes);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (ctx, index) {
        return WalletItem(
            address: walletTypes[index].address,
            type: walletTypes[index].type,
            amount: walletTypes[index].amount,
            walletIcon: walletTypes[index].walletIcon,
            sign: walletTypes[index].sign,
            percentage: walletTypes[index].percentage);
      },
      itemCount: walletTypes.length,
    );
  }
}
