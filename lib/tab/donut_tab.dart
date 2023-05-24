import 'package:flutter/material.dart';

import '../utils/donut_tile.dart';

class DonutTab extends StatelessWidget {
  List donutsOnSale = [
    ["Ice Cream", "36", Colors.blue, "assets/images/icecream_donut.png"],
    ["Ice Cream", "37", Colors.red, "assets/images/strawberry_donut.png"],
    ["Ice Cream", "38", Colors.purple, "assets/images/grape_donut.png"],
    ["Ice Cream", "39", Colors.brown, "assets/images/chocolate_donut.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(12.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 1.5),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1],
          donutColor: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3],
        );
      },
    );
  }
}
