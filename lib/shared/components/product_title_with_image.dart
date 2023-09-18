import 'package:flutter/material.dart';

import '../lists/products/products_list.dart';

class ProductTitleImage extends StatelessWidget {
  final Product product;
  const ProductTitleImage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              child: Hero(
                tag: '${product.id}',
                child: Image.asset(
                  product.image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
