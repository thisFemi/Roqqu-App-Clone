import 'package:flutter/material.dart';

class SavingsScreen extends StatefulWidget {
  SavingsScreen({Key? key}) : super(key: key);

  @override
  State<SavingsScreen> createState() => _SavingsScreenState();
}

class _SavingsScreenState extends State<SavingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 233, 231, 231),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.all(10),
            height: 650,
            width: MediaQuery.of(context).size.width * 0.97,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade400, blurRadius: .2)
                ]),
            child: Center(
                child: Column(children: [
              const SizedBox(height: 20),
              Container(
                height: 200,
                width: 200,
                child:
                    Image.asset('assets/images/savings.jpeg', fit: BoxFit.fill),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Crypto Savings',
                style: TextStyle(
                    color: Theme.of(context).backgroundColor,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Savings help you lock down funds in crypto, \n inaccessible by no one else but you, free from \n devaluation and depreciation, you also earn monthly up \n to 15% per annum.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Theme.of(context).backgroundColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  padding: const EdgeInsets.only(top: 7),
                  height: 30,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 143, 177, 215),
                      borderRadius: BorderRadius.circular(15)),
                  child: const Text(
                    'Save funds in USDT, 1 USDT = \$1',
                    style: TextStyle(fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  )),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 50,
                width: 250,
                child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Get Started'),
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 32, 87, 251),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)))),
              )
            ])),
          ),
        ));
  }
}
