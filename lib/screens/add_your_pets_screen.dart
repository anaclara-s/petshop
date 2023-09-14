import 'package:flutter/material.dart';
import 'package:petshop/shared/constants/constants.dart';
import 'package:petshop/shared/widgets/pets_size.dart';

import '../shared/themes/appbar_customized.dart';
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(kDefaultPaddin),
            child: Column(
              children: [
                PetsNameWidget(
                  controller: _petsNameController,
                ),
                SizedBox(
                  height: 20,
                ),
                const PetsTypesWidget(),
                SizedBox(
                  height: 25,
                ),
                const PetsSizeWidget(),
                SizedBox(
                  height: 20,
                ),
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
