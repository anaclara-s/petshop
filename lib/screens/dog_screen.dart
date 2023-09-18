import 'package:flutter/material.dart';
import 'package:petshop/shared/constants/constants.dart';

import '../shared/lists/products/filter_products_list.dart';
import '../shared/lists/products/products_list.dart';
import '../shared/themes/bottom_menu.dart';

class DogScreen extends StatelessWidget {
  const DogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Product> filteredProductsList = filteredDogProducts();

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return buildProductCard(filteredProductsList[index]);
                },
                itemCount: filteredProductsList.length,
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
