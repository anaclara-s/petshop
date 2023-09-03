import 'package:flutter/material.dart';

import '../models/product.dart';

class ColorsSides extends StatelessWidget {
  final Product product;
  const ColorsSides({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            const Text(
              'Tamanho:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Text(
                  '${product.weight} kg',
                  style: const TextStyle(fontSize: 20),
                )
              ],
            )
            //CRIAR ELEVATEDBUTTON PARA OS TAMANHOS
          ],
        ),
      ],
    );
  }
}
