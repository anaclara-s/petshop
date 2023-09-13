import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../constants/constants.dart';
import '../models/product.dart';

class FavoriteButtomAddCart extends StatelessWidget {
  final Product product;
  const FavoriteButtomAddCart({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          margin: const EdgeInsets.only(right: kDefaultPaddin),
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: product.bgcolor,
            ),
          ),
          child: IconButton(
            icon: Icon(
              MdiIcons.heart,
              size: 30,
              color: kButonsBackgroundColor,
            ),
            onPressed: () {
              print('FAVORITO');
            },
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: kDefaultPaddin),
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: product.bgcolor,
            ),
          ),
          child: IconButton(
            icon: Icon(
              MdiIcons.cart,
              size: 30,
              color: kButonsBackgroundColor,
            ),
            onPressed: () {
              print('CART');
            },
          ),
        ),
      ],
    );
  }
}
