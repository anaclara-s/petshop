import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'counter_cart.dart';

class ConterFavoriteButtom extends StatelessWidget {
  const ConterFavoriteButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const CounterCart(),
        Container(
          padding: const EdgeInsets.all(6),
          height: 32,
          width: 40,
          decoration: const BoxDecoration(
            color: Colors.pink,
            shape: BoxShape.circle,
          ),
          child: Icon(MdiIcons.heart),
        ),
      ],
    );
  }
}
