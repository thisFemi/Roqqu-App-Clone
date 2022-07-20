import 'package:flutter/material.dart';

class DepositScreen extends StatefulWidget {
  static const routeName = '/depositscreen';
  DepositScreen({Key? key}) : super(key: key);

  @override
  State<DepositScreen> createState() => _DepositScreenState();
}

class _DepositScreenState extends State<DepositScreen> {
  bool showBox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Deposit'),
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      backgroundColor: Color.fromARGB(255, 240, 240, 240),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Center(
            child: Text(
              'How much do you want to Deposit?',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 3),
                          borderRadius: BorderRadius.circular(5)),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                        decoration: InputDecoration(
                            fillColor: Colors.grey, hintText: 'Enter NGN'),
                      ),
                    ),
                    Text(
                      '=',
                      style: TextStyle(fontSize: 30, color: Colors.grey),
                    ),
                    Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 3),
                          borderRadius: BorderRadius.circular(5)),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                        decoration: InputDecoration(
                            fillColor: Colors.grey, hintText: 'Enter USD'),
                      ),
                    ),
                  ],
                )),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          showBox
              ? Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.9,
                  padding: EdgeInsets.only(top: 10, left: 2),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.green,
                      ),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    'The equivalent in USD now includes the 2.0% fee for trade.',
                    style: TextStyle(color: Colors.green),
                  ),
                )
              : Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.9,
                ),
          SizedBox(
            height: 10,
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(color: Colors.white),
              child: Row(children: [
                Switch(
                    activeColor: Color.fromARGB(255, 1, 35, 206),
                    value: showBox,
                    onChanged: (value) {
                      setState(() {
                        showBox = value;
                      });
                    }),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Include Fees in calculation',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                ),
              ])),
          SizedBox(
            height: 10,
          ),
          Center(
              child: Column(
            children: [
              Text('Maximum is 1,000,000 and minimum is 500'),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 1, 35, 206),
                    borderRadius: BorderRadius.circular(3)),
                child: Center(
                    child: Text(
                  'Proceed with deposit',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                )),
              )
            ],
          )),
        ],
      ),
    );
  }
}
