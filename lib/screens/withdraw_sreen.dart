import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';

class WithdrawScreen extends StatefulWidget {
  static const routeName = '/withdrawscreen';
  WithdrawScreen({Key? key}) : super(key: key);

  @override
  State<WithdrawScreen> createState() => _WithdrawScreenState();
}

class _WithdrawScreenState extends State<WithdrawScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Withdraw'),
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      backgroundColor: Color.fromARGB(255, 240, 240, 240),
      body: Column(children: [
        SizedBox(
          height: 40,
        ),
        Center(
            child: Text(
          'Choose an option to continue',
          style: TextStyle(fontSize: 25),
        )),
        SizedBox(
          height: 40,
        ),
        Container(
          padding: EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: Column(
            children: [
              buildWithdrawList(
                  Boxicons.bxs_wallet,
                  Color.fromARGB(255, 249, 65, 9),
                  'Withdraw to wallet(Fastest)'),
              buildWithdrawList(Icons.home_work_rounded,
                  Color.fromARGB(255, 78, 213, 83), 'Withdraw to bank account'),
              buildWithdrawList(Icons.phone_iphone_rounded,
                  Color.fromARGB(255, 108, 17, 113), 'Airtime recharge'),
              buildWithdrawList(
                  Icons.wifi, Color.fromARGB(255, 39, 157, 247), 'Buy Data'),
              buildWithdrawList(Boxicons.bxs_plug,
                  Color.fromARGB(255, 247, 145, 28), 'Electricity Bills'),
              buildWithdrawList(Icons.tv, Color.fromARGB(255, 39, 157, 247),
                  'Tv Subscriptions'),
            ],
          ),
        )
      ]),
    );
  }

  Padding buildWithdrawList(IconData icon, Color iconColor, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Container(
        height: 60,
        child: ListTile(
          onTap: () {},
          tileColor: Colors.white,
          leading: Icon(
            icon,
            color: iconColor,
            size: 30,
          ),
          title: Text(title),
          trailing: Icon(Icons.arrow_forward_ios_outlined),
        ),
      ),
    );
  }
}
