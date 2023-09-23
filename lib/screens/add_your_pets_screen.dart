import 'package:flutter/material.dart';

import '../shared/constants/constants.dart';
import '../shared/themes/appbar_customized.dart';
import '../shared/themes/buttom_menu.dart';
import '../shared/widgets/custom_text_form_field_widget.dart';
import '../shared/widgets/pets_widgets/pets_breeds.dart';
import '../shared/widgets/pets_widgets/pets_gender.dart';
import '../shared/widgets/pets_widgets/pets_size.dart';

class AddYourPetsScreen extends StatelessWidget {
  final TextEditingController _textsController = TextEditingController();
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
                  CustomTextFormFieldWidget(
                    controller: _textsController,
                    maxLength: 30,
                    labelText: 'Nome',
                    keyboardType: TextInputType.text,
                    inputFormatters: null,
                  ),
                  const SizedBox(height: 20),
                  const PetsBreedsWidget(),
                  const SizedBox(height: 25),
                  const PetsSizeWidget(),
                  const SizedBox(height: 20),
                  CustomTextFormFieldWidget(
                    controller: _textsController,
                    maxLength: 10,
                    labelText: 'Pelagem / Cor',
                    keyboardType: TextInputType.text,
                    inputFormatters: null,
                  ),
                  const PetsGenderWidget(),
                  const SizedBox(height: 25),
                  CustomTextFormFieldWidget(
                    controller: _textsController,
                    labelText: 'Data de nascimento',
                    inputFormatters: null,
                    onTap: true,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                print('PET ADCIONADO');
              },
              child: const Text('ADCIONAR PET'),
            ),
            const SizedBox(height: 70),
            const ButtomMenu(),
          ],
        ),
      ),
    );
  }
}
