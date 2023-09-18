import 'package:flutter/material.dart';

import '../shared/lists/products/filter_products_list.dart';
import '../shared/lists/products/products_list.dart';

class DogScreen extends StatelessWidget {
  const DogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Product> dogItems =
        selectedItems.where((item) => item.title.contains('Dog')).toList();

    return Scaffold(
      body: Column(
        children: [
          for (var item in dogItems) Text(item.title),
        ],
      ),
    );
  }
}
