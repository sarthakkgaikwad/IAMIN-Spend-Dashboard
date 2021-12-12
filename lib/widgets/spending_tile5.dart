import 'package:flutter/material.dart';

class SpendingTile5 extends StatefulWidget {
  final int categorySpendAmount;
  final int categoryPercentage;
  final int tiles;

  SpendingTile5(this.categorySpendAmount, this.categoryPercentage, this.tiles,
      {Key? key})
      : super(key: key);

  @override
  _SpendingTile5State createState() => _SpendingTile5State();
}

class _SpendingTile5State extends State<SpendingTile5> {
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(8),
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: const LinearGradient(
            colors: [Color(0xFF188CE2), Color(0xFF10A4A4)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: Stack(
        children: [
          GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
                childAspectRatio: 4 / 3),
            children: List.generate(
                widget.tiles.toInt(),
                    (index) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Color(0xFF3BB7B2),
                  ),
                )),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Misc. General \nMerchandise',
                style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Last Payment 17 May',
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$${widget.categorySpendAmount}', style: const TextStyle(color: Colors.white)),
                  Text('${widget.categoryPercentage}%', style: const TextStyle(color: Colors.white)),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}