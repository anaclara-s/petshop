import 'package:flutter/material.dart';

import '../models/product.dart';

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
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: formatNumber.format(product.price),
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: Colors.greenAccent, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
