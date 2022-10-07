import 'package:flutter/material.dart';
import 'package:rocketapp_clone/pages/login_page.dart';

class NavigationDrawyerWidget extends StatefulWidget {
  const NavigationDrawyerWidget({super.key});

  @override
  State<NavigationDrawyerWidget> createState() =>
      _NavigationDrawyerWidgetState();
}

class _NavigationDrawyerWidgetState extends State<NavigationDrawyerWidget> {
  bool switchValue = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .7,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 155,
            width: MediaQuery.of(context).size.width * .7,
            color: Colors.purple,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 5),
                  child: Image.asset(
                    "images/logo.png",
                    width: 150,
                    height: 80,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25, bottom: 5),
                  child: Text(
                    "Rocket",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25, bottom: 5),
                  child: Text(
                    "Dutch Bangla Bank Ltd",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 155,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  drawyerList(Icons.wordpress_outlined, "Remittance"),
                  drawyerList(Icons.account_balance_wallet_outlined, "Inquiry"),
                  drawyerList(
                      Icons.stay_primary_portrait_rounded, "Mini Statement"),
                  drawyerList(Icons.qr_code_2_rounded, "My QR"),
                  drawyerList(Icons.sell_rounded, "Service Charges"),
                  drawyerList(Icons.format_list_numbered_rtl_outlined,
                      "Transaction Limits"),
                  const SizedBox(height: 10),
                  Divider(
                    height: 6,
                    color: Colors.purple.withOpacity(.5),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                    child: Text(
                      "Settings",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                  drawyerList(Icons.language_rounded, "Language"),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(20, 0, 5, 0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.balance,
                            color: Colors.purple.shade400,
                          ),
                          const SizedBox(width: 20),
                          const Text(
                            "Quick Balance",
                            style: TextStyle(color: Colors.black54),
                          ),
                          Expanded(
                            child: Switch(
                              value: switchValue,
                              onChanged: (value) {
                                setState(() {
                                  switchValue = value;
                                });
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Divider(
                    height: 6,
                    color: Colors.purple.withOpacity(.5),
                  ),
                  //about
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                    child: Text(
                      "About",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                  drawyerList(Icons.info, "About Us"),
                  drawyerList(Icons.phone, "Contract Us"),
                  drawyerList(Icons.logout_rounded, 'Logout'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  InkWell drawyerList(IconData icon, String title) {
    return InkWell(
      onTap: () {
        if (title == "Logout") {
          Navigator.pushNamed(context, LoginPage.routeName);
        }
      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.purple.shade400,
            ),
            const SizedBox(width: 20),
            Text(
              title,
              style: const TextStyle(color: Colors.black87),
            )
          ],
        ),
      ),
    );
  }
}
