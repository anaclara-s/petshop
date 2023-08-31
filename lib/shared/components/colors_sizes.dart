import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../models/product.dart';

class ColorsSides extends StatelessWidget {
  final Product product;
  const ColorsSides({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Selecione o tamanho:',
              style: TextStyle(fontSize: 20),
            ),
            //CRIAR ELEVATEDBUTTON PARA OS TAMANHOS
            Row(
              children: [
                ColoredPart(
                  colored: Color.fromARGB(255, 216, 169, 29),
                  isSelected: true,
                ),
                ColoredPart(colored: Colors.indigo, isSelected: false),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class ColoredPart extends StatelessWidget {
  final Color colored;
  final bool isSelected;
  const ColoredPart(
      {super.key, required this.colored, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: kDefaultPaddin,
        right: kDefaultPaddin / 2,
      ),
      padding: const EdgeInsets.all(2),
      height: 50,
      width: 24,
      decoration: BoxDecoration(
        color: colored,
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? colored : const Color.fromARGB(0, 247, 1, 1),
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: colored,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
