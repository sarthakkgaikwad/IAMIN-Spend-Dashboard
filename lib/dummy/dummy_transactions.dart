import 'package:dashboard/dummy/transaction.dart';
import 'package:flutter/material.dart';

class DummyTransactions extends StatelessWidget {
  const DummyTransactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Transaction('WWWOLACABSCOM', '26 May 2021', '-449', Colors.red, '6:40 pm'),
        Transaction('Recharge', '26 May 2021', '+155', Colors.green, '6:40 pm'),
        Transaction('Reliance Retail Ltd', '17 May 2021', '-4,949', Colors.red, '12:11 am'),
        Transaction('Recharge', '17 May 2021', '+4,500', Colors.green, '12:09 am'),
        Transaction('Airtel', '01 May 2021', '-49', Colors.red, '6:40 pm'),
        // Transaction('Reliance', '26 May 2021', -449, Colors.red, '6:40 pm'),
      ],
    );
  }
}
