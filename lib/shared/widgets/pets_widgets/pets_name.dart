import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class PetsNameWidget extends StatelessWidget {
  final TextEditingController controller;

  const PetsNameWidget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'NOME *',
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: kButonsBackgroundColor),
        ),
        TextFormField(
          controller: controller,
          maxLength: 10,
          style: const TextStyle(
            color: Colors.white,
          ),
          keyboardType: TextInputType.text,
        ),
      ],
    );
  }
}
