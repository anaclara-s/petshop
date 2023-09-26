import 'package:flutter/material.dart';

import '../shared/constants/constants.dart';
import '../shared/lists/pets/pets_breeds_list.dart';
import '../shared/lists/pets/pets_gender_list.dart';
import '../shared/lists/pets/pets_syzes_list.dart';
import '../shared/themes/appbar_customized.dart';
import '../shared/themes/buttom_menu.dart';
import '../shared/widgets/custom_drop_down_button.dart';
import '../shared/widgets/custom_text_form_field_widget.dart';

class AddYourPetsScreen extends StatefulWidget {
  const AddYourPetsScreen({super.key});

  @override
  State<AddYourPetsScreen> createState() => _AddYourPetsScreenState();
}

class _AddYourPetsScreenState extends State<AddYourPetsScreen> {
  final TextEditingController _textsNameController = TextEditingController();
  final TextEditingController _textsFurController = TextEditingController();
  final TextEditingController _textsBirthController = TextEditingController();

  String dropDownValueSizePets = listSizePets.first;
  String dropDownValuePetsGender = listPetsGender.first;
  String? selectedPetType;
  String? selectedBreed;

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
                    controller: _textsNameController,
                    maxLength: 30,
                    labelText: 'Nome',
                    keyboardType: TextInputType.text,
                    inputFormatters: null,
                  ),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Selecione o tipo :',
                        style: TextStyle(
                          color: kButonsBackgroundColor,
                          fontSize: 20,
                        ),
                      ),
                      CustomDropDownButton(
                        value: selectedPetType,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedPetType = newValue;
                            selectedBreed = null;
                          });
                        },
                        items: listBreeds.keys.map((String petType) {
                          return DropdownMenuItem<String>(
                            value: petType,
                            child: Text(petType),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  if (selectedPetType != null)
                    CustomDropDownButton(
                      value: selectedBreed,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedBreed = newValue;
                        });
                      },
                      items: (listBreeds[selectedPetType!] ?? [])
                          .map((String breed) {
                        return DropdownMenuItem<String>(
                          value: breed,
                          child: Text(breed),
                        );
                      }).toList()
                        ..sort(
                            (a, b) => (a.value ?? '').compareTo(b.value ?? '')),
                    ),
                  const SizedBox(height: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Selecione o porte :',
                        style: TextStyle(
                          color: kButonsBackgroundColor,
                          fontSize: 20,
                        ),
                      ),
                      CustomDropDownButton(
                        value: dropDownValueSizePets,
                        onChanged: (String? value) {
                          setState(() {
                            dropDownValueSizePets = value!;
                          });
                        },
                        items: listSizePets
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  CustomTextFormFieldWidget(
                    controller: _textsFurController,
                    maxLength: 10,
                    labelText: 'Pelagem / Cor',
                    keyboardType: TextInputType.text,
                    inputFormatters: null,
                  ),
                  const SizedBox(height: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Selecione o sexo :',
                        style: TextStyle(
                          color: kButonsBackgroundColor,
                          fontSize: 20,
                        ),
                      ),
                      CustomDropDownButton(
                        value: dropDownValuePetsGender,
                        onChanged: (String? value) {
                          setState(() {
                            dropDownValuePetsGender = value!;
                          });
                        },
                        items: listPetsGender
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  CustomTextFormFieldWidget(
                    controller: _textsBirthController,
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
