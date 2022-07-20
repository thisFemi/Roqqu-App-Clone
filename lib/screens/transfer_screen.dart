import 'package:flutter/material.dart';
import 'package:roqquclone/my-globals.dart' as user;

class TransferScreen extends StatefulWidget {
  static const routeName = '/transferscreen';
  TransferScreen({Key? key}) : super(key: key);

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Fiat Transfer'),
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      backgroundColor: Color.fromARGB(255, 240, 240, 240),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10),
            height: 370,
            width: MediaQuery.of(context).size.width * 0.95,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 93, 92, 92), blurRadius: 1.5),
              ],
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1.5),
                      borderRadius: BorderRadius.circular(5)),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                    decoration: InputDecoration(
                        fillColor: Colors.grey, hintText: '     Recipient'),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1.5),
                      borderRadius: BorderRadius.circular(5)),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                    decoration: InputDecoration(
                        fillColor: Colors.grey, hintText: '     Amount'),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Balance:  ' +
                      user.currentValue.toString() +
                      ' ' +
                      user.userBalance.toString(),
                  style: TextStyle(color: Colors.blue),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1.5),
                      borderRadius: BorderRadius.circular(5)),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                    decoration: InputDecoration(
                        fillColor: Colors.grey,
                        hintText: '     Narration (optional)'),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Container(
                    width: 250,
                    height: 50,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 5),
                        ],
                        color: Color.fromARGB(255, 21, 122, 205),
                        borderRadius: BorderRadius.circular(7)),
                    child: Center(
                        child: Text(
                      'Verify Details',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
