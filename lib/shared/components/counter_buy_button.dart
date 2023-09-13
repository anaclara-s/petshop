import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../lists/product.dart';
import 'quantity_counter.dart';

class CounterBuyButton extends StatelessWidget {
  final Product product;
  const CounterBuyButton({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Quantitycounter(),
          const SizedBox(
            width: 20,
          ),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(10, 50),
                backgroundColor: kButonsBackgroundColor,
              ),
              child: Text(
                'COMPRE AGORA'.toUpperCase(),
              ),
              onPressed: () {
                print('COMPRA');
              },
            ),
          ),
        ],
      ),
    );
  }
}
