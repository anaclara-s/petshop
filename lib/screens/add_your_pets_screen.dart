import 'package:flutter/material.dart';

import '../shared/models/appbar_customized.dart';
import '../shared/widgets/pets_name.dart';
import '../shared/widgets/pets_type.dart';

class AddYourPetsScreen extends StatelessWidget {
  final TextEditingController _petsNameController = TextEditingController();
  AddYourPetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustomized(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [
                PetsNameWidget(
                  controller: _petsNameController,
                ),
                const PetsTypesWidget(),
              ],
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
