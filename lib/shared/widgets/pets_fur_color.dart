import 'package:flutter/material.dart';
import 'package:petshop/shared/constants/constants.dart';

class PetsFurColorWidget extends StatelessWidget {
  final TextEditingController controller;

  const PetsFurColorWidget({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'PELAGEM/COR *',
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
