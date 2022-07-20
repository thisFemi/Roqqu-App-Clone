import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatefulWidget {
  WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 231, 231),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(children: [
            Container(
                padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      width: 2, color: Color.fromARGB(255, 211, 210, 210)),
                  borderRadius: BorderRadius.circular(5),
                ),
                height: 1420,
                width: MediaQuery.of(context).size.width * 0.95,
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(width: .2, color: Colors.grey)),
                      width: MediaQuery.of(context).size.width * 0.97,
                      padding: EdgeInsets.all(13),
                      child: Text(
                        'Wallet Addresses',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      height: .2,
                      width: MediaQuery.of(context).size.width * 0.95,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        'Wallet allows you to organize your funds into categories like\nspendig and savings',
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    buildWalletTypesInfo(
                        'Bitcoin Wallet',
                        Color.fromARGB(255, 255, 90, 1),
                        '0.0000 BTC',
                        '0 BTC',
                        CryptoFontIcons.BTC),
                    SizedBox(
                      height: 12,
                    ),
                    buildWalletTypesInfo(
                        'Ethereum Wallet',
                        Color.fromARGB(255, 61, 66, 89),
                        '0.0001 ETH',
                        '0.2112 ETH',
                        CryptoFontIcons.ETH),
                    SizedBox(
                      height: 12,
                    ),
                    buildWalletTypesInfo(
                        'Tether Wallet',
                        Color.fromARGB(255, 43, 151, 101),
                        '0.0060 USDT',
                        '140 USDT',
                        CryptoFontIcons.USDT),
                    SizedBox(
                      height: 12,
                    ),
                    buildWalletTypesInfo(
                        'XRP Wallet',
                        Color.fromARGB(255, 10, 10, 10),
                        '7 XRP',
                        '90 XRP',
                        CryptoFontIcons.XRP),
                    SizedBox(
                      height: 12,
                    ),
                    buildWalletTypesInfo(
                        'DOGE Wallet',
                        Color.fromARGB(255, 183, 183, 3),
                        '20 DOGE',
                        '1500 DOGE',
                        CryptoFontIcons.DOGE),
                    SizedBox(
                      height: 12,
                    ),
                    buildWalletTypesInfo(
                        'STEEM Wallet',
                        Color.fromARGB(255, 12, 65, 237),
                        '32 STEEM',
                        ' 67 STEEM',
                        CryptoFontIcons.STEEM),
                    SizedBox(
                      height: 12,
                    ),
                    buildWalletTypesInfo(
                        'DASH  Wallet',
                        Color.fromARGB(255, 25, 130, 235),
                        '15 DASH',
                        '76 DASH',
                        CryptoFontIcons.DASH),
                    SizedBox(
                      height: 12,
                    ),
                    buildWalletTypesInfo(
                        'WAVES  Wallet',
                        Color.fromARGB(255, 3, 3, 3),
                        '15 WAVES',
                        '90 WAVES',
                        CryptoFontIcons.WAVES),
                  ],
                )),
          ]),
        ),
      ),
    );
  }

  Container buildWalletTypesInfo(
      String title, Color titleColor, String bal, String total, IconData icon) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width * .9,
      padding: EdgeInsets.only(left: 20, top: 15, right: 20),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(5)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w500, color: titleColor),
            ),
            CircleAvatar(
              child: Icon(
                icon,
                color: Colors.white,
              ),
              backgroundColor: titleColor,
            )
          ],
        ),
        SizedBox(height: 10),
        Text(
          'Balance',
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
        Text(bal),
        SizedBox(
          height: 15,
        ),
        Text(
          'Total Received',
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
        Text(
          total,
        )
      ]),
    );
  }
}
