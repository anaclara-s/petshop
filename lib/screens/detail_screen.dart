import 'package:flutter/material.dart';

import '../shared/components/colors_sizes.dart';
import '../shared/components/counter_with_favorite_button.dart';
import '../shared/components/description.dart';
import '../shared/components/product_title_with_image.dart';
import '../shared/constants/constants.dart';
import '../shared/models/product.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 1),
                    padding: const EdgeInsets.only(
                      top: 1.5,
                      left: kDefaultPaddin,
                      right: kDefaultPaddin,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        ColorsSides(product: product),
                        const SizedBox(
                          height: kDefaultPaddin / 2,
                        ),
                        Description(product: product),
                        const SizedBox(
                          height: kDefaultPaddin / 2,
                        ),
                        const ConterFavoriteButtom(),
                        const SizedBox(
                          height: kDefaultPaddin / 2,
                        ),
                        //add cart
                      ],
                    ),
                  ),
                  ProductTitleImage(product: product),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
