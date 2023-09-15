import 'package:flutter/material.dart';

import '../shared/constants/constants.dart';
import '../shared/themes/bottom_menu.dart';
import '../shared/widgets/pets_fur_color.dart';
import '../shared/widgets/pets_size.dart';
import '../shared/themes/appbar_customized.dart';
import '../shared/widgets/pets_breeds.dart';
import '../shared/widgets/pets_name.dart';

class AddYourPetsScreen extends StatelessWidget {
  final TextEditingController _petsNameController = TextEditingController();
  final TextEditingController _petsFurColorController = TextEditingController();
  AddYourPetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustomized(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(kDefaultPaddin),
              child: Column(
                children: [
                  PetsNameWidget(
                    controller: _petsNameController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const PetsBreedsWidget(),
                  const SizedBox(
                    height: 25,
                  ),
                  const PetsSizeWidget(),
                  const SizedBox(
                    height: 20,
                  ),
                  PetsFurColorWidget(
                    controller: _petsFurColorController,
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
            BottomMenu(),
          ],
        ),
      ),
    );
  }
}
