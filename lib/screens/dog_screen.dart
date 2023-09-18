import 'package:flutter/material.dart';
import 'package:petshop/shared/components/items.dart';
import 'package:petshop/shared/constants/constants.dart';
import 'package:petshop/shared/themes/appbar_customized.dart';

import '../shared/lists/products/filter_products_list.dart';
import '../shared/lists/products/products_list.dart';
import '../shared/themes/bottom_menu.dart';
import 'detail_screen.dart';

class DogScreen extends StatelessWidget {
  const DogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Product> filteredProductsList = filteredDogProducts();

    return Scaffold(
      appBar: AppBarCustomized(),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.60,
                ),
                itemCount: filteredProductsList.length,
                itemBuilder: (context, index) => Item(
                  product: products[index],
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

  Widget buildProductCard(Product product) {
    return Card(
      child: Column(
        children: [
          Image.asset(product.image),
          Text(product.title),
          Text('Preço: ${formatNumber.format(product.price)}'),
        ],
      ),
    );
  }
}
