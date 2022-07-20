import 'package:flutter/material.dart';
import 'package:roqquclone/dummy_data.dart';
import 'package:roqquclone/my-globals.dart' as wallet;
import 'package:roqquclone/widgets/wallet_item_menu.dart';

class WalletItem extends StatelessWidget {
  final String address;
  final String type;
  final double amount;
  final IconData walletIcon;
  final String sign;
  final double percentage;

  WalletItem(
      {required this.address,
      required this.type,
      required this.amount,
      required this.walletIcon,
      required this.sign,
      required this.percentage});
  Color colorCheck(String perctageColor) {
    final signIndex =
        (DUMMY_WALLETS.indexWhere((type) => type.sign == perctageColor));
    return signIndex == '+' ? Colors.green : Colors.red;
  }

  void _showWalletMenu(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return GestureDetector(onTap: () {}, child: WalletMenu());
        });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showWalletMenu(context),
      child: Container(
          child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(0),
            child: CircleAvatar(
              child: Icon(
                walletIcon,
                color: Colors.white,
              ),
              backgroundColor: Color.fromARGB(238, 252, 109, 0),
            ),
          ),
          Column(
            children: [
              Text(type),
              Text(wallet.currentValue.toString() + amount.toString())
            ],
          ),
          Container(
            child: Row(
              children: [
                Text(
                  sign + percentage.toString() + '%',
                  style: TextStyle(color: colorCheck(sign)),
                ),
                Icon(Icons.arrow_forward_ios, color: Colors.black, size: 20),
              ],
            ),
          )
        ],
      )),
    );
  }
}
