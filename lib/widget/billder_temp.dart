import 'package:flutter/material.dart';
import 'package:rocketapp_clone/model/biller_model.dart';

class BillderTempWidget extends StatefulWidget {
  final Biller billerList;
  const BillderTempWidget({super.key, required this.billerList});

  @override
  State<BillderTempWidget> createState() => _BillderTempWidgetState();
}

class _BillderTempWidgetState extends State<BillderTempWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        alignment: Alignment.center,
        height: 55,
        width: 50,
        //padding: const EdgeInsets.all(12),
        color: Colors.grey.shade200,
        child: Text(
          widget.billerList.billerName[0],
          style: const TextStyle(
            color: Colors.purple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      title: Container(
        alignment: Alignment.topLeft,
        height: 30,
        width: 25,
        child: Text(
          widget.billerList.billerName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),
        ),
      ),
      subtitle: Row(
        children: [
          Text(widget.billerList.id),
          const SizedBox(width: 5),
          Text(widget.billerList.category),
        ],
      ),
    );
  }
}
