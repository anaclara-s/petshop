import 'package:flutter/material.dart';

import '../shared/components/items.dart';
import '../shared/constants/constants.dart';
import '../shared/lists/products/filter_products_list.dart';
import '../shared/lists/products/products_list.dart';
import '../shared/themes/appbar_customized.dart';
import '../shared/themes/bottom_menu.dart';
import 'detail_screen.dart';

class BirdScreen extends StatelessWidget {
  const BirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Product> filteredBirdProductsList = filteredBirdProducts();

    return Scaffold(
      appBar: const AppBarCustomized(),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsetsDirectional.symmetric(horizontal: kDefaultPaddin),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.60,
                ),
                itemCount: filteredBirdProductsList.length,
                itemBuilder: (context, index) => Item(
                  product: filteredBirdProductsList[index],
                  press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailsScreen(product: products[index]),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const BottomMenu(),
        ],
      ),
    );
  }
}
