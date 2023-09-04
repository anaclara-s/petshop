import 'package:flutter/material.dart';

import '../constants/constants.dart';

class CounterCart extends StatefulWidget {
  const CounterCart({super.key});

  @override
  State<CounterCart> createState() => _CounterCartState();
}

class _CounterCartState extends State<CounterCart> {
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
              color: Color.fromARGB(255, 255, 0, 76),
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
              color: Color.fromARGB(255, 255, 0, 76),
            ),
          ),
        ),
      ],
    );
  }
}
