import 'package:flutter/material.dart';
import 'package:rocketapp_clone/widget/billder_temp.dart';

import '../model/biller_model.dart';

class BillPayPage extends StatefulWidget {
  const BillPayPage({super.key});
  static String routeName = '/billpay';
  @override
  State<BillPayPage> createState() => _BillPayPageState();
}

class _BillPayPageState extends State<BillPayPage> {
  bool isFilter = false;
  bool myBiller = false;
  String selectedCategory = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bill Pay"),
        centerTitle: true,
        actions: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 15, 15, 15),
            padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(
                  Icons.receipt,
                  color: Colors.purple,
                  size: 18,
                ),
                Text(
                  "Bill Receipt",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
          ),
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            color: Colors.purple,
            child: Column(
              children: [
                TextField(
                  onChanged: _searchFunction,
                  decoration: const InputDecoration(
                    hintText: "Search Biller",
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 20, right: 14),
                      child: Icon(Icons.search),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            myBiller = false;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 45,
                          decoration: BoxDecoration(
                            color:
                                myBiller ? Colors.grey.shade200 : Colors.white,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                          child: const Text("SELECT BILLER"),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            myBiller = true;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 45,
                          decoration: BoxDecoration(
                            color:
                                myBiller ? Colors.white : Colors.grey.shade200,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                          child: const Text("MY BILLER"),
                        ),
                      ),
                    ),
                  ],
                ),
                //catagory
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.fromLTRB(80, 0, 80, 0),
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.purple),
              borderRadius: BorderRadius.circular(7),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DropdownButton(
                  underline: Container(),
                  hint: isFilter
                      ? Text(selectedCategory)
                      : const Text("Category (All)"),
                  items: <String>[
                    "All Category",
                    'Utillty',
                    'Education',
                    'Shoping',
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      if (value == "All Category") {
                        isFilter = false;
                        selectedCategory = value!;
                      } else {
                        isFilter = true;
                        selectedCategory = value!;
                      }
                    });
                  },
                )
              ],
            ),
          ),
          myBiller
              ? SizedBox(
                  height: MediaQuery.of(context).size.height - 220,
                  child: ListView.builder(
                    itemCount: billerList.length,
                    itemBuilder: (context, index) {
                      return billerList[index].id == "2040"
                          ? BillderTempWidget(billerList: billerList[index])
                          : Container();
                    },
                  ),
                )
              : SizedBox(
                  height: MediaQuery.of(context).size.height - 220,
                  child: ListView.builder(
                    itemCount: billerList.length,
                    itemBuilder: (context, index) {
                      if (isFilter) {
                        return billerList[index].category == selectedCategory
                            ? BillderTempWidget(billerList: billerList[index])
                            : Container();
                      } else {
                        return BillderTempWidget(billerList: billerList[index]);
                      }
                    },
                  ),
                ),
        ],
      ),
    );
  }

  void _searchFunction(String value) {
    int lenght = value.length;
    setState(() {
      //future work
    });
  }
}
