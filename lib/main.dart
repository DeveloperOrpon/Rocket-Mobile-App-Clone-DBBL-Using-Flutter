import 'package:flutter/material.dart';
import 'package:rocketapp_clone/pages/add_money.dart';
import 'package:rocketapp_clone/pages/bill_pay_page.dart';
import 'package:rocketapp_clone/pages/home_page.dart';
import 'package:rocketapp_clone/pages/loadingPage.dart';
import 'package:rocketapp_clone/pages/login_page.dart';
import 'package:rocketapp_clone/pages/mobile_recharge_page.dart';
import 'package:rocketapp_clone/pages/notification.dart';
import 'package:rocketapp_clone/pages/payBill_page.dart';
import 'package:rocketapp_clone/widget/billder_temp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {
        LoginPage.routeName: (context) => const LoginPage(),
        HomePage.routeName: (context) => const HomePage(),
        LoadingPage.routeName: (context) => const LoadingPage(),
        NotificationPage.routeName: (context) => const NotificationPage(),
        AddMoneyPage.routeName: (context) => const AddMoneyPage(),
        MobileRechargePage.routeName: (context) => const MobileRechargePage(),
        BillPayPage.routeName: (context) => const BillPayPage(),
        PayBillPage.routeName: (context) => const PayBillPage(),
      },
    );
  }
}
