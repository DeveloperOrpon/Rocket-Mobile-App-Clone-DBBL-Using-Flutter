import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MobileRechargePage extends StatefulWidget {
  const MobileRechargePage({super.key});
  static String routeName = "/mobileRecharge";
  @override
  State<MobileRechargePage> createState() => _MobileRechargePageState();
}

class _MobileRechargePageState extends State<MobileRechargePage> {
  String? seletedOperator;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobile Recharge"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.purple.withOpacity(.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            mobileRechargeOption(
              title: "Pre-paid/Post-paid",
              preIcon: Icons.person,
              postIcons: Icons.perm_contact_cal_rounded,
              about: "Pre-paid/Post-paid",
            ),
            mobileRechargeOption(
              title: "Opterator",
              preIcon: Icons.sim_card_rounded,
              postIcons: Icons.arrow_drop_down,
              about: "Select Opterator",
            ),
            Container(
              color: Colors.white,
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              padding: const EdgeInsets.all(30),
              child: CupertinoButton(
                color: Colors.purple,
                child: const Text("Submit"),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
  //Column

  Container mobileRechargeOption(
      {required String title,
      required IconData preIcon,
      required IconData postIcons,
      required String about}) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                color: Colors.purple.shade200, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Container(
            decoration: BoxDecoration(
              color: Colors.purple.withOpacity(.04),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    seletedOperator != null && title == 'Opterator'
                        ? seletedOperator!
                        : about,
                    style: TextStyle(color: Colors.grey.shade400),
                  ),
                  leading: Icon(preIcon),
                  trailing: title == 'Opterator'
                      ? DropdownButton<String>(
                          icon: Icon(postIcons),
                          items: <String>[
                            'Grameenphone',
                            'Banglalink',
                            'Robi',
                            'Airtel',
                            'Teletalk'
                          ].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              seletedOperator = value;
                            });
                          },
                          underline: Container(),
                        )
                      : IconButton(
                          onPressed: () {},
                          icon: Icon(postIcons),
                        ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
