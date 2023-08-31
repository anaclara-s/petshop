import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../models/product.dart';

class ColorsSides extends StatelessWidget {
  final Product product;
  const ColorsSides({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('COLOR'),
              Row(
                children: [
                  ColoredPart(
                    colored: Color.fromARGB(255, 97, 78, 22),
                    isSelected: true,
                  ),
                  ColoredPart(colored: Colors.indigo, isSelected: false),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(
                color: kTextColor,
              ),
              children: [
                const TextSpan(
                  text: 'size\n',
                ),
                TextSpan(
                  text: '${product.size} cm',
                  style: const TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ColoredPart extends StatelessWidget {
  final Color colored;
  final bool isSelected;
  const ColoredPart(
      {super.key, required this.colored, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: kDefaultPaddin / 4,
        right: kDefaultPaddin / 2,
      ),
      padding: const EdgeInsets.all(2),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        color: colored,
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? colored : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: colored,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
