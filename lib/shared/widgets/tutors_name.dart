import 'package:flutter/material.dart';

class TutorsNameWidget extends StatelessWidget {
  final TextEditingController controller;

  const TutorsNameWidget({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLength: 30,
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: const InputDecoration(
        labelText: 'NOME DO TUTOR',
      ),
      keyboardType: TextInputType.text,
    );
  }
}
