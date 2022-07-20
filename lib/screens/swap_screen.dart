import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:roqquclone/my-globals.dart' as user;

class SwapScreen extends StatefulWidget {
  static const routeName = '/swapscreen';
  SwapScreen({Key? key}) : super(key: key);

  @override
  State<SwapScreen> createState() => _SwapScreenState();
}

class _SwapScreenState extends State<SwapScreen> {
  dynamic _calleditem;

  @override
  Widget _buildWalletCurrent() {
    void _showWalletTypes(BuildContext ctx) {
      showModalBottomSheet(
          context: ctx,
          builder: (_) {
            return Wrap(children: [
              Container(
                  color: Color.fromARGB(255, 207, 206, 206),
                  padding: EdgeInsets.only(
                    left: 5,
                    right: 5,
                    top: 10,
                  ),
                  height: 400,
                  child: ListView(
                    children: [
                      Card(
                          child: ListTile(
                        onTap: () => _callitem(CryptoFontIcons.ETH),
                        leading: CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 61, 66, 89),
                            child:
                                Icon(CryptoFontIcons.ETH, color: Colors.white)),
                        title: Text('ETH'),
                      )),
                      // buildWalletCard(_callitem(CryptoFontIcons.ETH),
                      //     Color.fromARGB(255, 61, 66, 89), 'ETH'),
                      // buildWalletCard(CryptoFontIcons.LTC,
                      //     Color.fromARGB(255, 26, 68, 127), 'LTC'),
                      // buildWalletCard(CryptoFontIcons.USDT,
                      //     Color.fromARGB(255, 43, 151, 101), 'USDT'),
                      // buildWalletCard(CryptoFontIcons.XRP,
                      //     Color.fromARGB(255, 10, 10, 10), 'XRP'),
                      // buildWalletCard(CryptoFontIcons.DOGE,
                      //     Color.fromARGB(255, 183, 183, 3), 'DOGE'),
                      // buildWalletCard(CryptoFontIcons.STEEM,
                      //     Color.fromARGB(255, 12, 65, 237), 'STEEM'),
                      // buildWalletCard(CryptoFontIcons.DASH,
                      //     Color.fromARGB(255, 25, 130, 235), 'DASH'),
                      // buildWalletCard(CryptoFontIcons.WAVES,
                      //     Color.fromARGB(255, 3, 3, 3), 'WAVES')
                    ],
                  ))
            ]);
          });
    }

    return GestureDetector(
        onTap: () => _showWalletTypes(context),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
                backgroundColor: Color.fromARGB(255, 255, 90, 1),
                child: _calleditem = Icon(
                  CryptoFontIcons.BTC,
                  size: 20,
                  color: Colors.white,
                )),
            SizedBox(
              width: 5,
            ),
            Icon(Icons.arrow_drop_down)
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Swap Tokens'),
          backgroundColor: Theme.of(context).backgroundColor,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.only(top: 15, left: 10, right: 10),
              child: Container(
                padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                width: MediaQuery.of(context).size.width * 0.95,
                height: 400,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(.09),
                          blurRadius: .5,
                          spreadRadius: 1,
                          offset: Offset(0, 2))
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 1.5, color: Colors.grey)),
                      child: Row(
                        children: [
                          Container(
                              width: 270,
                              height: 70,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                style: TextStyle(color: Colors.grey),
                                decoration: InputDecoration(
                                    fillColor: Colors.black,

                                    /// labelText: 'You Swap',
                                    hintText: '    You Swap'),
                              )),
                          Container(
                            width: 2,
                            height: 35,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 205, 204, 204)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          _buildWalletCurrent()
                        ],
                      ),
                    ),
                    Container(
                      child: Container(
                        padding: EdgeInsets.only(right: 5),
                        child: Text(
                          'Balance : 0.0 BTC',
                          textAlign: TextAlign.right,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }

  // Card buildWalletCard(IconData icon, Color iconColor, String title) {
  //   return Card(
  //       child: ListTile(
  //     onTap: () => _callitem(icon),
  //     leading: CircleAvatar(
  //         backgroundColor: iconColor, child: Icon(icon, color: Colors.white)),
  //     title: Text(title),
  //   ));
  // }

  _callitem(dynamic item) {
    Navigator.pop(context);
    setState(() {
      _calleditem = item;
    });
  }
}
