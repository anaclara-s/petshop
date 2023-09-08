import 'package:flutter/material.dart';

import '../shared/models/appbar_customized.dart';
import '../shared/widgets/pets_name.dart';

class AddYourPetsScreen extends StatelessWidget {
  final TextEditingController _petsNameController = TextEditingController();
  AddYourPetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustomized(),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: PetsNameWidget(
              controller: _petsNameController,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print('PET ADCIONADO');
            },
            child: const Text('ADCIONAR PET'),
          ),
        ],
      ),
    );
  }
}
