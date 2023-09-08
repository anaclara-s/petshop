import 'package:flutter/material.dart';

class PetsNameWidget extends StatelessWidget {
  final TextEditingController controller;

  const PetsNameWidget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLength: 10,
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: const InputDecoration(
        labelText: 'NOME DO PET',
      ),
      keyboardType: TextInputType.text,
    );
  }
}
