import 'package:flutter/material.dart';

import '../shared/components/counter_buy_button.dart';
import '../shared/components/price_sizes.dart';
import '../shared/components/favorite_button_addcart.dart';
import '../shared/components/description.dart';
import '../shared/components/product_title_with_image.dart';
import '../shared/constants/constants.dart';
import '../shared/lists/products/products_list.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.bgcolor,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 20, 129, 123),
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
                        ProductTitleImage(product: product),
                        const SizedBox(
                          height: kDefaultPaddin / 2,
                        ),
                        PriceSize(product: product),
                        const SizedBox(
                          height: kDefaultPaddin,
                        ),
                        FavoriteButtomAddCart(
                          product: product,
                        ),
                        const SizedBox(
                          height: kDefaultPaddin / 2,
                        ),
                        const SizedBox(
                          height: kDefaultPaddin / 2,
                        ),
                        CounterBuyButton(product: product),
                        Description(product: product),
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
