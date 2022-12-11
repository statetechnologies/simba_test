import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:simba_test/ui/theme.dart';

import '../widgets/Dashboard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: FooterView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Image.asset(
                      'images/oil.png',
                      width: 80,
                      height: 80,
                    ),
                    Text(
                      'Welcome, Name',
                      style: titleStyle.copyWith(fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(
                  height: 45,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      DashBox(
                        color: Colors.lime,
                        widget: Icon(
                          Icons.manage_accounts_outlined,
                          size: 52,
                          color: Colors.white,
                        ),
                        label: 'New Client',
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      DashBox(
                        color: Colors.purpleAccent,
                        widget: Icon(
                          Icons.money_sharp,
                          size: 52,
                          color: Colors.white,
                        ),
                        label: 'New Client',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      DashBox(
                        color: Colors.blue,
                        widget: Icon(
                          Icons.supervisor_account,
                          size: 52,
                          color: Colors.white,
                        ),
                        label: 'New Client',
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      DashBox(
                        color: Colors.yellow,
                        widget: Icon(
                          Icons.redeem_rounded,
                          size: 52,
                          color: Colors.white,
                        ),
                        label: 'New Client',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      DashBox(
                        color: Colors.pinkAccent,
                        widget: Icon(
                          Icons.help_sharp,
                          size: 52,
                          color: Colors.white,
                        ),
                        label: 'New Client',
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      DashBox(
                        color: Colors.green,
                        widget: Icon(
                          Icons.question_mark_sharp,
                          size: 52,
                          color: Colors.white,
                        ),
                        label: 'New Client',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ],
          footer: Footer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Powered by SIMBA GROUP'),
                SizedBox(
                  height: 5,
                ),
                Text('Version 2.0'),
              ],
            ),
            padding: EdgeInsets.only(bottom: 15.0),
          ),
          flex: 3,
        ));
  }
}
