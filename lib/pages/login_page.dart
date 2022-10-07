import 'package:flutter/material.dart';
import 'package:rocketapp_clone/pages/home_page.dart';
import 'package:rocketapp_clone/pages/loadingPage.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static String routeName = '/';
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 30),
        color: Colors.purple,
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: 1,
              child: Image.asset(
                "images/logo.png",
                height: 120,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 90),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Mobile No.",
                    style: TextStyle(color: Colors.white),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Mobile Number",
                      prefixIcon: const Icon(Icons.person),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 90),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "PIN",
                    style: TextStyle(color: Colors.white),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "PIN",
                      prefixIcon: const Icon(Icons.lock_outline_rounded),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, LoadingPage.routeName);
              },
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 90),
                height: 50,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    const Text(
                      "LOG IN",
                      style: TextStyle(color: Colors.purple),
                    ),
                    Positioned(
                      top: -4,
                      left: MediaQuery.of(context).size.width / 2 - 100,
                      child: const Icon(
                        Icons.arrow_forward_rounded,
                        color: Colors.purple,
                      ),
                    )
                  ],
                ),
              ),
            ),
            //end login
            const SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Forget Rocket PIN",
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () async {
                Uri url = Uri(path: "https://flutter.io");
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  throw "Could not launch $url";
                }
              },
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 90),
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    FittedBox(child: Image.asset("images/covid.png")),
                    Positioned(
                      top: 7,
                      left: MediaQuery.of(context).size.width / 2 - 55,
                      child: const Icon(
                        Icons.arrow_forward_rounded,
                        color: Colors.purple,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
