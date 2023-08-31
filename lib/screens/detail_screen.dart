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
      backgroundColor: product.bgcolor,
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    padding: const EdgeInsets.only(
                      top: kDefaultPaddin,
                    ),
                    child: Column(
                      children: <Widget>[
                        const ConterFavoriteButtom(),
                        ProductTitleImage(product: product),
                        const SizedBox(
                          height: kDefaultPaddin,
                        ),
                        ColorsSides(product: product),
                        const SizedBox(
                          height: kDefaultPaddin,
                        ),
                        Description(product: product),
                        const SizedBox(
                          height: kDefaultPaddin,
                        ),
                        const SizedBox(
                          height: kDefaultPaddin,
                        ),
                        //add cart
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
