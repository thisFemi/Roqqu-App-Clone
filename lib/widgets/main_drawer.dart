import 'package:flutter/material.dart';
import 'package:roqquclone/my-globals.dart' as globals;

class MainDrawer extends StatefulWidget {
  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  // const MainDrawer({Key? key}) : super(key: key);

  var userBal = 5.2;

  Widget buildListTile(String title, IconData icon, Function() tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black87, fontSize: 16),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            padding: EdgeInsets.only(top: 70),
            decoration: BoxDecoration(color: Theme.of(context).backgroundColor),
            child: Container(
                //   padding: EdgeInsets.fromLTRB(20, 70, 20, 10),
                child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person_rounded,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  globals.username,
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  globals.currentValue.toString() +
                      globals.userBalance.toString(),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            )),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Primary Currency',
                style: TextStyle(color: Colors.grey),
              ),
              DropdownButton(
                value: globals.currentValue,
                items: globals.currency.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    globals.currentValue = newValue;
                  });
                },
                isExpanded: true,
              ),
            ]),
          ),
          Column(children: [
            buildListTile('Help', Icons.help, () => null),
            buildListTile('About Roqqu', Icons.info, () => null),
            buildListTile('Sign Out', Icons.exit_to_app_outlined, () => null)
          ]),
          Container(
            height: 1,
            decoration: BoxDecoration(color: Colors.grey),
          ),
          SizedBox(
            height: 5,
          ),
          Column(children: [
            buildListTile('Fees & Limits', Icons.attach_money, () => null),
            buildListTile('Terms of use', Icons.bar_chart, () => null),
            buildListTile('Privacy Policy', Icons.privacy_tip, () => null)
          ]),
        ],
      ),
    );
  }
}
