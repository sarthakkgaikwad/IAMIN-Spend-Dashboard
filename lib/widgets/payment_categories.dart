import 'dart:math';

import 'package:dashboard/widgets/spending_tile.dart';
import 'package:dashboard/widgets/spending_tile2.dart';
import 'package:dashboard/widgets/spending_tile3.dart';
import 'package:dashboard/widgets/spending_tile4.dart';
import 'package:dashboard/widgets/spending_tile5.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentCategories extends StatelessWidget {
  const PaymentCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var random = Random();
    var categorySpendAmount = random.nextInt(10000);
    var categoryPercentage = ((categorySpendAmount / 10000) * 100).toInt();
    var tiles = (categoryPercentage * 28) ~/ 100;

    var categorySpendAmount2 = random.nextInt(10000 - categorySpendAmount);
    var categoryPercentage2 = ((categorySpendAmount2 / 10000) * 100).toInt();
    var tiles2 = (categoryPercentage2 * 28) ~/ 100;

    var categorySpendAmount3 = random.nextInt(10000 - (categorySpendAmount2 + categorySpendAmount));
    var categoryPercentage3 = ((categorySpendAmount3 / 10000) * 100).toInt();
    var tiles3 = (categoryPercentage3 * 28) ~/ 100;

    var categorySpendAmount4 = random.nextInt(10000 - (categorySpendAmount2 + categorySpendAmount+ categorySpendAmount3));
    var categoryPercentage4 = ((categorySpendAmount4 / 10000) * 100).toInt();
    var tiles4 = (categoryPercentage4 * 28) ~/ 100;

    var categorySpendAmount5 = 10000 - (categorySpendAmount + categorySpendAmount2 + categorySpendAmount3 + categorySpendAmount4);
    var categoryPercentage5 = ((categorySpendAmount5 / 10000) * 100).toInt();
    var tiles5 = (categoryPercentage5 * 28) ~/ 100;

    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 16),
      child: Container(
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            SpendingTile(categorySpendAmount, categoryPercentage, tiles),
            SpendingTile2(categorySpendAmount2, categoryPercentage2, tiles2),
            SpendingTile3(categorySpendAmount3, categoryPercentage3, tiles3),
            SpendingTile4(categorySpendAmount4, categoryPercentage4, tiles4),
            SpendingTile5(categorySpendAmount5, categoryPercentage5, tiles5),
          ],
        ),
      ),
    );
  }
}
