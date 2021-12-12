import 'package:flutter/material.dart';

class SpendingTile extends StatefulWidget {
  final int categorySpendAmount;
  final int categoryPercentage;
  final int tiles;

  SpendingTile(this.categorySpendAmount, this.categoryPercentage, this.tiles,
      {Key? key})
      : super(key: key);

  @override
  _SpendingTileState createState() => _SpendingTileState();
}

class _SpendingTileState extends State<SpendingTile> {
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
            colors: [Color(0xFF6051E5), Color(0xFF8577FB)],
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
                        color: const Color(0xFF897AEF),
                      ),
                    )),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Mobile home \ndealers',
                style:
                    TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
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
                  Text('\$${widget.categorySpendAmount}',
                      style: const TextStyle(color: Colors.white)),
                  Text('${widget.categoryPercentage}%',
                      style: const TextStyle(color: Colors.white)),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
