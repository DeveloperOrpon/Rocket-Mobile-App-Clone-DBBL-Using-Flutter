import 'package:flutter/material.dart';

class AddMoneyPage extends StatefulWidget {
  const AddMoneyPage({super.key});
  static String routeName = '/addmoney';
  @override
  State<AddMoneyPage> createState() => _AddMoneyPageState();
}

class _AddMoneyPageState extends State<AddMoneyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Money"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.purple.withOpacity(.1),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    offset: const Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: Column(
                children: [
                  addMoneyOption(
                      imageUrl: "", title: "Form Other Bank", isImage: false),
                  Container(
                    height: 2,
                    color: Colors.purple.withOpacity(.1),
                  ),
                  addMoneyOption(
                      imageUrl: "images/visa.png",
                      title: "Other Bank VISA Card",
                      isImage: true),
                  Container(
                    height: 2,
                    color: Colors.purple.withOpacity(.1),
                  ),
                  addMoneyOption(
                      imageUrl: "images/mastercard.png",
                      title: "Other Bank MasterCard Card",
                      isImage: true),
                  Container(
                    height: 2,
                    color: Colors.purple.withOpacity(.1),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    offset: const Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: Column(
                children: [
                  addMoneyOption(
                      imageUrl: "", title: "DBBL Bank", isImage: false),
                  Container(
                    height: 2,
                    color: Colors.purple.withOpacity(.1),
                  ),
                  addMoneyOption(
                      imageUrl: "images/visa.png",
                      title: "DBBL VISA Card",
                      isImage: true),
                  Container(
                    height: 2,
                    color: Colors.purple.withOpacity(.1),
                  ),
                  addMoneyOption(
                      imageUrl: "images/mastercard.png",
                      title: "DBBL MasterCard Card",
                      isImage: true),
                  Container(
                    height: 2,
                    color: Colors.purple.withOpacity(.1),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container addMoneyOption(
      {required String imageUrl,
      required String title,
      required bool isImage}) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        children: [
          if (isImage)
            Image.asset(
              imageUrl,
              width: 50,
              height: 50,
            ),
          const SizedBox(width: 15),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
