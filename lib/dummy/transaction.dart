import 'package:flutter/material.dart';

class Transaction extends StatelessWidget {
  final String company;
  final String date;
  final String amount;
  final Color color;
  final String time;

  const Transaction(this.company, this.date, this.amount, this.color, this.time,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        tileColor: Color(0xFF191A2D),
        leading: const CircleAvatar(
          backgroundColor: Color(0xFF20243E),
          child: Icon(Icons.transfer_within_a_station),
        ),
        title: Text(company, style: const TextStyle(color: Colors.white),),
        subtitle: Text(date, style: const TextStyle(color: Colors.white)),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              amount,
              style: TextStyle(color:color),
            ),
            Text(time, style: const TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
