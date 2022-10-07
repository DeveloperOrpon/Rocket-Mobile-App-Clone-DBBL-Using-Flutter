import 'package:flutter/material.dart';
import 'package:rocketapp_clone/model/biller_model.dart';
import 'package:rocketapp_clone/pages/add_money.dart';
import 'package:rocketapp_clone/pages/bill_pay_page.dart';
import 'package:rocketapp_clone/pages/mobile_recharge_page.dart';
import 'package:rocketapp_clone/pages/notification.dart';
import 'package:rocketapp_clone/pages/payBill_page.dart';
import 'package:rocketapp_clone/widget/navigation_drawer.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static String routeName = '/home';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isAnimation = false;
  bool _isBalanceShown = false;
  bool _isBalance = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Hero(
          tag: 1,
          child: Image.asset(
            'images/logo.png',
            height: 60,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, NotificationPage.routeName);
                },
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                )),
          )
        ],
      ),
      body: Column(
        children: [
          //Secound Section
          Container(
            color: Colors.purple,
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Container(
                        width: 22,
                        height: 22,
                        alignment: Alignment.center,
                        child: const Text("0"),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Mofizol Haque",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        Text(
                          "01932610623",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        Text(
                          "GENERAL CONSUMER",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
                InkWell(
                  onTap: animate,
                  child: Container(
                    padding: const EdgeInsets.all(13),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        AnimatedOpacity(
                          duration: const Duration(milliseconds: 200),
                          opacity: _isBalanceShown ? 1 : 0,
                          child: const Text("1220"),
                        ),
                        AnimatedOpacity(
                          duration: const Duration(microseconds: 200),
                          opacity: _isBalance ? 1 : 0,
                          child: const Text("Tab for Balance"),
                        ),
                        AnimatedPositioned(
                          duration: const Duration(milliseconds: 1100),
                          left: _isAnimation == false ? -20 : 70,
                          curve: Curves.fastOutSlowIn,
                          child: Container(
                            height: 20,
                            width: 20,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              border: Border(
                                right:
                                    BorderSide(width: 4, color: Colors.purple),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),

          /// ads section

          Container(
            padding: const EdgeInsets.all(8),
            height: 95,
            child: CarouselSlider(
              options: CarouselOptions(
                height: 95.0,
                autoPlay: true,
                autoPlayAnimationDuration: const Duration(seconds: 1),
              ),
              items: adsList
                  .map((e) => Image.asset(
                        e,
                        width: double.infinity - 6,
                        fit: BoxFit.cover,
                      ))
                  .toList(),
            ),
          ),

          ///ads end
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.only(top: 15),
            height: 310,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _optionMenu(
                      imageUrl: "images/wallet.png",
                      title: "Add Money",
                    ),
                    _optionMenu(
                      imageUrl: "images/mobile.png",
                      title: "Mobile Recharge",
                    ),
                    _optionMenu(
                      imageUrl: "images/takeover.png",
                      title: "Bill Pay",
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _optionMenu(
                      imageUrl: "images/shopping-cart.png",
                      title: "Merchant Pay",
                    ),
                    _optionMenu(
                      imageUrl: "images/money.png",
                      title: "Send Money",
                    ),
                    _optionMenu(
                      imageUrl: "images/transaction-history.png",
                      title: "Cash Out",
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _optionMenu(
                      imageUrl: "images/banking.png",
                      title: "Bank Transfer",
                    ),
                    const SizedBox(width: 120),
                    const SizedBox(width: 120)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.purple,
        items: const [
          BottomNavigationBarItem(
            label: 'Location',
            icon: Icon(
              Icons.location_on_rounded,
            ),
          ),
          BottomNavigationBarItem(
            label: 'SCAN QR',
            icon: Icon(
              Icons.qr_code_scanner_rounded,
            ),
          ),
          BottomNavigationBarItem(
            label: 'OFFERS',
            icon: Icon(
              Icons.card_giftcard_rounded,
            ),
          ),
        ],
      ),
      drawer: const NavigationDrawyerWidget(),
    );
  }

  InkWell _optionMenu({required String imageUrl, required String title}) =>
      InkWell(
        onTap: () {
          if (title == 'Add Money') {
            Navigator.pushNamed(context, AddMoneyPage.routeName);
          }
          if (title == "Mobile Recharge") {
            Navigator.pushNamed(context, MobileRechargePage.routeName);
          }
          if (title == "Bill Pay") {
            Navigator.pushNamed(context, BillPayPage.routeName);
          }
          if (title == 'Merchant Pay') {
            Navigator.pushNamed(
              context,
              PayBillPage.routeName,
              arguments: 'Merchant Pay',
            );
          }
          if (title == 'Send Money') {
            Navigator.pushNamed(
              context,
              PayBillPage.routeName,
              arguments: 'Send Money',
            );
          }
          if (title == "Cash Out") {
            Navigator.pushNamed(
              context,
              PayBillPage.routeName,
              arguments: "Cash Out",
            );
          }
        },
        child: Container(
          width: 120,
          padding: const EdgeInsets.all(5),
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Image.asset(
                  imageUrl,
                  color: Colors.purple,
                ),
              ),
              Text(
                title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.grey),
              )
            ],
          ),
        ),
      );

  void animate() async {
    _isAnimation = true;
    _isBalance = false;
    setState(() {});

    await Future.delayed(const Duration(milliseconds: 800),
        () => setState(() => _isBalanceShown = true));
    await Future.delayed(const Duration(seconds: 3),
        () => setState(() => _isBalanceShown = false));
    await Future.delayed(const Duration(milliseconds: 200),
        () => setState(() => _isAnimation = false));
    await Future.delayed(const Duration(milliseconds: 800),
        () => setState(() => _isBalance = true));
  }
}
