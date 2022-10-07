import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rocketapp_clone/pages/home_page.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});
  static String routeName = '/loading';
  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  bool isOk = true;
  Timer? timer;
  @override
  void initState() {
    timer = Timer.periodic(const Duration(seconds: 3), (Timer t) {
      _navigate();
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 1,
              child: Image.asset(
                "images/logo.png",
                width: 220,
                height: 220,
              ),
            ),
            const SizedBox(height: 50),
            Container(
              alignment: Alignment.topLeft,
              child: Column(
                children: const [
                  Text(
                    "Please Wait",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: LinearProgressIndicator(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _navigate() {
    timer!.cancel();
    Navigator.pushNamed(context, HomePage.routeName);
  }
}
