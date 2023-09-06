import 'package:flutter/material.dart';

import '../shared/models/appbar_customized.dart';

class AddYourPetsScreen extends StatelessWidget {
  const AddYourPetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustomized(),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: TextFormField(
          maxLength: 10,
          style: const TextStyle(
            color: Colors.white,
          ),
          decoration: const InputDecoration(
            labelText: 'NOME DO PET',
          ),
          keyboardType: TextInputType.text,
        ),
      ),
    );
  }
}
