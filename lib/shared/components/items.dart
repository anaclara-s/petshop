import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../models/product.dart';

class Item extends StatelessWidget {
  final Product product;
  final VoidCallback press;

  const Item({super.key, required this.product, required this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(kDefaultPaddin),
              width: 180,
              height: 160,
              decoration: BoxDecoration(
                color: product.bgcolor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Hero(
                tag: "${product.id}",
                child: Image.asset(product.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              product.title,
              style: const TextStyle(
                fontSize: 18,
                color: kTextColor,
              ),
            ),
          ),
          Text(
            formatNumber.format(product.price),
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
