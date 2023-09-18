import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../lists/products/products_list.dart';

class Description extends StatelessWidget {
  final Product product;
  const Description({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        product.description,
        style: const TextStyle(height: 2),
      ),
    );
  }
}
