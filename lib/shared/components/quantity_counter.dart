import 'package:flutter/material.dart';

import '../constants/constants.dart';

class Quantitycounter extends StatefulWidget {
  const Quantitycounter({super.key});

  @override
  State<Quantitycounter> createState() => _QuantitycounterState();
}

class _QuantitycounterState extends State<Quantitycounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 40,
          height: 32,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.zero,
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            onPressed: () {
              setState(() {
                if (numOfItems > 1) {
                  setState(() {
                    numOfItems--;
                  });
                }
              });
            },
            child: const Icon(
              Icons.remove,
              color: kButonsBackgroundColor,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Text(
            numOfItems.toString().padLeft(2, '0'),
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        SizedBox(
          width: 40,
          height: 32,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            onPressed: () {
              setState(() {
                numOfItems++;
              });
            },
            child: const Icon(
              Icons.add,
              color: kButonsBackgroundColor,
            ),
          ),
        ),
      ],
    );
  }
}
