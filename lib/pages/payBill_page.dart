import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PayBillPage extends StatefulWidget {
  const PayBillPage({super.key});
  static String routeName = '/billpaytemp';
  @override
  State<PayBillPage> createState() => _PayBillWidgetState();
}

class _PayBillWidgetState extends State<PayBillPage> {
  String info = "";
  @override
  void didChangeDependencies() {
    info = ModalRoute.of(context)!.settings.arguments as String;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(info),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.purple.withOpacity(.1),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.white,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(30),
              child: Column(
                children: const [
                  Icon(
                    Icons.qr_code_scanner_rounded,
                    size: 40,
                  ),
                  Text(
                    'Scan QR',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              padding: const EdgeInsets.all(25),
              child: const Text(
                "OR",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              color: Colors.white,
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$info Moile or A/C No",
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
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
                            'Moile or A/C No',
                            style: TextStyle(color: Colors.grey.shade400),
                          ),
                          leading: const Icon(Icons.person),
                          trailing:
                              const Icon(Icons.perm_contact_calendar_rounded),
                        ),
                        Container(
                          color: Colors.white,
                          width: double.infinity,
                          margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          padding: const EdgeInsets.all(30),
                          child: CupertinoButton(
                            color: Colors.purple,
                            child: const Text("Next"),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
