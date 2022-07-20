import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:intl/intl.dart';

import 'package:roqquclone/my-globals.dart' as user;
import 'package:roqquclone/screens/add_screen_wallet.dart';
import 'package:roqquclone/screens/buy_screen.dart';
import 'package:roqquclone/screens/referral_screen.dart';
import 'package:roqquclone/screens/sell_screen.dart';
import 'package:roqquclone/screens/send_screen.dart';

import '../models/wallet.dart';

class OverviewScreen extends StatefulWidget {
  // OverviewScreen({Key? key}) : super(key: key);
  final List<Wallet> walletTypes;
  OverviewScreen(this.walletTypes);
  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  List<Map<String, dynamic>>? walletCurent;
  final formatCurrency = new NumberFormat.currency(
      locale: "eu_US",
      customPattern: "#,##0.00 ",
      symbol: user.currentValue,
      decimalDigits: 0);

  var bal = user.userBalance;

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
                      buildWalletCard(CryptoFontIcons.BTC,
                          Color.fromARGB(255, 255, 90, 1), 'BTC'),
                      buildWalletCard(CryptoFontIcons.ETH,
                          Color.fromARGB(255, 61, 66, 89), 'ETH'),
                      buildWalletCard(CryptoFontIcons.LTC,
                          Color.fromARGB(255, 26, 68, 127), 'LTC'),
                      buildWalletCard(CryptoFontIcons.USDT,
                          Color.fromARGB(255, 43, 151, 101), 'USDT'),
                      buildWalletCard(CryptoFontIcons.XRP,
                          Color.fromARGB(255, 10, 10, 10), 'XRP'),
                      buildWalletCard(CryptoFontIcons.DOGE,
                          Color.fromARGB(255, 183, 183, 3), 'DOGE'),
                      buildWalletCard(CryptoFontIcons.STEEM,
                          Color.fromARGB(255, 12, 65, 237), 'STEEM'),
                      buildWalletCard(CryptoFontIcons.DASH,
                          Color.fromARGB(255, 25, 130, 235), 'DASH'),
                      buildWalletCard(CryptoFontIcons.WAVES,
                          Color.fromARGB(255, 3, 3, 3), 'WAVES')
                    ],
                  ))
            ]);
          });
    }

    return GestureDetector(
      onTap: () => _showWalletTypes(context),
      child: Container(
          child: Center(
        child: Column(
          children: [
            const Text('Updated a few moments ago'),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 255, 90, 1),
                        child: Icon(
                          CryptoFontIcons.BTC,
                          size: 30,
                          color: Colors.white,
                        )),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      user.currentValue.toString(),
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      user.btcValue.toString(),
                      style: TextStyle(fontSize: 20),
                    ),
                    Icon(Icons.arrow_drop_down)
                  ],
                ))
              ],
            ))
          ],
        ),
      )),
    );
  }

  Widget _buildWalletList(
      Color iconColor,
      IconData icon,
      String walletTitle,
      double coinWorth,
      double amount,
      String sign,
      double perctage,
      double coinValue) {
    void _showWalletMenu(BuildContext ctx) {
      showModalBottomSheet(
          context: ctx,
          builder: (_) {
            return Wrap(children: [
              Container(
                // elevation: 4,
                height: 400,
                color: Color.fromARGB(255, 233, 230, 230),
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(top: 30),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: iconColor,
                          child: Icon(
                            icon,
                            size: 40,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      user.currentValue.toString() +
                          ' ' +
                          '${formatCurrency.format(coinValue)}',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '24 hrs change ',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        Text(sign + perctage.toString() + '%',
                            style: TextStyle(
                              fontSize: 14,
                              color: sign == '+' ? Colors.green : Colors.red,
                            ))
                      ],
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.only(top: 15),
                        child: Center(
                            child: Column(
                          children: [
                            Text('Wallet Balance'),
                            Text(
                                walletTitle +
                                    ' ' +
                                    coinWorth.toString() +
                                    ' ~ ' +
                                    user.currentValue.toString() +
                                    ' ' +
                                    amount.toString(),
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold))
                          ],
                        )),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildWalletMenuOptions(
                              BuyScreen.routeName, Icons.wallet, 'Buy'),
                          buildWalletMenuOptions(
                              SellScreen.routeName, Icons.money, 'Sell'),
                          buildWalletMenuOptions(SendScreen.routeName,
                              Icons.call_received, 'Send'),
                          buildWalletMenuOptions(
                              '', Icons.settings_input_component, 'Receive'),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ]);
          });
    }

    return GestureDetector(
      onTap: () => _showWalletMenu(context),
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 0.5,
                  // spreadRadius: .2,
                  offset: Offset(0.6, 0.6),
                )
              ]),
          child: Container(
              child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(0),
                child: CircleAvatar(
                  child: Icon(
                    icon,
                    color: Colors.white,
                  ),
                  backgroundColor: iconColor,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    walletTitle + "  " + coinWorth.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(user.currentValue.toString() +
                      '${formatCurrency.format(amount)}')
                ],
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.only(right: 10),
                child: Row(
                  children: [
                    Text(
                      sign + perctage.toString() + '%',
                      style: TextStyle(
                          color: sign == '+' ? Colors.green : Colors.red),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.arrow_forward_ios,
                        color: Colors.black, size: 20),
                  ],
                ),
              )
            ],
          )),
        ),
      ),
    );
  }

  GestureDetector buildWalletMenuOptions(
      String pageRoute, IconData icon, String title) {
    return GestureDetector(
      onTap: () =>
          pageRoute == '' ? () {} : Navigator.pushNamed(context, pageRoute),
      child: Container(
        // margin: EdgeInsets.only(right: 10),
        height: 90,
        width: 90,
        padding: EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          //  mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 20,
              child: Icon(icon),
              backgroundColor: Color.fromARGB(255, 197, 215, 247),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 231, 231),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 280,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Theme.of(context).backgroundColor),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                'Your Balance',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                user.currentValue.toString() +
                                    "" +
                                    '${formatCurrency.format(bal)}',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Positioned(
                      top: 100,
                      right: 10,
                      left: 10,
                      bottom: 5,
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.95,
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 15),
                          height: 180,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(.09),
                                    blurRadius: 8,
                                    spreadRadius: 3,
                                    offset: Offset(0, 10))
                              ]),
                          child: Container(
                            padding: EdgeInsets.only(
                              left: 5,
                              right: 5,
                              top: 5,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // /mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      buildDashoardMenu(
                                          () => Navigator.pushNamed(
                                              context, '/depositscreen'),
                                          Boxicons.bx_download,
                                          'Deposit'),
                                      buildDashoardMenu(() {},
                                          Icons.currency_bitcoin, 'Buy/Sell'),
                                      buildDashoardMenu(
                                          () => Navigator.pushNamed(
                                              context, '/withdrawscreen'),
                                          Icons.assured_workload_rounded,
                                          'Withdraw'),
                                      buildDashoardMenu(
                                          () => Navigator.pushNamed(
                                              context, '/transferscreen'),
                                          Icons.swap_horizontal_circle_outlined,
                                          'Transfer')
                                    ]),
                                SizedBox(height: 10),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      buildDashoardMenu(
                                          () => Navigator.pushNamed(
                                              context, '/swapscreen'),
                                          Icons.layers,
                                          'CoinSwap'),
                                      buildDashoardMenu(
                                          () => Navigator.pushNamed(
                                              context, '/swapscreen'),
                                          Icons.notifications_on_outlined,
                                          'PriceAlert'),
                                      buildDashoardMenu(
                                          () => Navigator.pushNamed(
                                              context, '/swapscreen'),
                                          Boxicons.bxs_phone_call,
                                          'Airtime'),
                                      buildDashoardMenu(
                                          () => Navigator.pushNamed(
                                              context, '/swapscreen'),
                                          Icons.more_horiz,
                                          'More')
                                    ])
                              ],
                            ),
                          ))),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 160,
              width: MediaQuery.of(context).size.width * 0.95,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 1.2,
                    color: Color.fromARGB(255, 197, 215, 247),
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Crypto Portfolio Summary'),
                        Icon(Icons.cancel_outlined)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 1,
                    decoration: BoxDecoration(color: Colors.grey),
                  ),
                  Container(
                    height: 50,
                    padding: EdgeInsets.only(left: 10, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Portfolio Value (NGN)'),
                        Text(
                          user.currentValue.toString() +
                              "" +
                              '${formatCurrency.format(bal)}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 1,
                    decoration: BoxDecoration(color: Colors.grey),
                  ),
                  Container(
                    height: 50,
                    padding: EdgeInsets.only(left: 10, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Portfolio Loss (24 hrs)'),
                        Row(
                          children: [
                            Text(
                              user.currentValue.toString() + '' + '3,339',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.red),
                            ),
                            Text(
                              '-4.01%',
                              style: TextStyle(color: Colors.red),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: ListView(
                shrinkWrap: true,
                children: [
                  _buildWalletList(
                      Color.fromARGB(255, 255, 90, 1),
                      CryptoFontIcons.BTC,
                      'BTC',
                      0,
                      493,
                      '+',
                      4,
                      user.btcValue),
                  _buildWalletList(
                      Color.fromARGB(255, 61, 66, 89),
                      CryptoFontIcons.ETH,
                      'ETH',
                      0.0004,
                      37893,
                      '+',
                      2.0,
                      user.ethValue),
                  _buildWalletList(
                      Color.fromARGB(255, 26, 68, 127),
                      CryptoFontIcons.LTC,
                      'LTC',
                      0.2,
                      3893,
                      '-',
                      4,
                      user.ltcValue),
                  _buildWalletList(
                      Color.fromARGB(255, 43, 151, 101),
                      CryptoFontIcons.USDT,
                      'USD-T',
                      1,
                      601,
                      '+',
                      0.1,
                      user.tetherValue),
                  _buildWalletList(Colors.black, CryptoFontIcons.XRP, 'XRP',
                      0.0004, 37893, '-', 4, user.ethValue),
                  _buildWalletList(
                      Color.fromARGB(255, 183, 183, 3),
                      CryptoFontIcons.DOGE,
                      'DOGE',
                      2776,
                      30193,
                      '-',
                      3.2,
                      user.dogeValue),
                  _buildWalletList(
                      Color.fromARGB(255, 12, 65, 237),
                      CryptoFontIcons.STEEM,
                      'STEEM',
                      12,
                      2083,
                      '+',
                      12.3,
                      user.steemValue),
                  _buildWalletList(
                      Color.fromARGB(255, 25, 130, 235),
                      CryptoFontIcons.DASH,
                      'DASH',
                      0.4,
                      593,
                      '-',
                      0,
                      user.dashValue),
                  _buildWalletList(
                      Color.fromARGB(255, 3, 3, 3),
                      CryptoFontIcons.WAVES,
                      'WAVES',
                      2.4,
                      6793,
                      '+',
                      45.6,
                      user.waveValue),
                ],
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.95,
                height: 70,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 24, 28, 239),
                    borderRadius: BorderRadius.circular(5)),
                child: ListTile(
                  onTap: () => Navigator.of(context)
                      .pushNamed(AddWalletScreen.routeName),
                  leading: CircleAvatar(
                    child: Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                    backgroundColor: Colors.white,
                  ),
                  title: Text('Add New Wallet',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      )),
                  subtitle: Text(
                    'More coin options',
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.95,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Price History'),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                                height: 25,
                                padding: EdgeInsets.only(left: 5, right: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color.fromARGB(255, 145, 177, 232),
                                ),
                                child: Row(children: [
                                  Text(
                                    'Fav tokens',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Icon(
                                    Icons.unfold_less_sharp,
                                    color: Colors.black,
                                    size: 20,
                                  )
                                ])),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 1,
                      decoration: BoxDecoration(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    _buildWalletCurrent(),
                    Text(
                      '-4%',
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () =>
                  Navigator.pushNamed(context, ReferralScreen.routeName),
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: 320,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Image.asset(
                              'assets/images/roqqu_referral.jpeg',
                              fit: BoxFit.fill),
                        ),
                        Text('Earn passive income on Roqqu',
                            style: TextStyle(fontSize: 20)),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            height: 1,
                            decoration: BoxDecoration(color: Colors.grey)),
                        Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width * 0.95,
                            padding:
                                EdgeInsets.only(top: 20, left: 10, right: 10),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  const Text(
                                    'Refer your friends and earn 0.5%  on all their transactions when',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  const Text(
                                      'they sign up using your referral link. Click here to get your link',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500))
                                ]))
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }

  GestureDetector buildDashoardMenu(
      Function() tapHandler, IconData icon, String title) {
    return GestureDetector(
      onTap: () => tapHandler(),
      child: Container(
        width: 70,
        height: 60,
        padding: EdgeInsets.only(left: 2, right: 2),
        child: Column(
          children: [
            CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 197, 215, 247),
                radius: 22,
                child: Icon(
                  icon,
                  color: Color.fromARGB(255, 26, 59, 250),
                  size: 30,
                )),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

Card buildWalletCard(IconData icon, Color iconColor, String title) {
  return Card(
      child: ListTile(
    leading: CircleAvatar(
        backgroundColor: iconColor, child: Icon(icon, color: Colors.white)),
    title: Text(title),
  ));
}
