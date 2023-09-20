import 'package:flutter/material.dart';

import '../../shared/components/items.dart';
import '../../shared/constants/constants.dart';
import '../../shared/lists/products/filter_products_list.dart';
import '../../shared/lists/products/products_list.dart';
import '../../shared/themes/appbar_customized.dart';
import '../../shared/themes/buttom_menu.dart';
import '../detail_screen.dart';

class CatScreen extends StatelessWidget {
  const CatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Product> filteredCatProductsList = filteredCatProducts();

    return Scaffold(
      appBar: const AppBarCustomized(),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.60,
                ),
                itemCount: filteredCatProductsList.length,
                itemBuilder: (context, index) => Item(
                  product: filteredCatProductsList[index],
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
          const ButtomMenu(),
        ],
      ),
    );
  }
}
