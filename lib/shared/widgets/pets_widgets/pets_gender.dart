import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../lists/pets/pets_gender_list.dart';

class PetsGenderWidget extends StatefulWidget {
  const PetsGenderWidget({super.key});

  @override
  State<PetsGenderWidget> createState() => _PetsGenderWidgetState();
}

class _PetsGenderWidgetState extends State<PetsGenderWidget> {
  String dropDownValue = listPetsGender.first;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'SEXO *',
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: kButonsBackgroundColor),
        ),
        SizedBox(
          width: double.infinity,
          child: DropdownButton(
            hint: const Text(
              'SELECIONE O SEXO',
              style: TextStyle(
                color: kButonsBackgroundColor,
                fontSize: 20,
              ),
            ),
            icon: const Icon(
              Icons.arrow_downward_outlined,
              color: kButonsBackgroundColor,
            ),
            dropdownColor: const Color.fromARGB(255, 250, 245, 243),
            style: const TextStyle(
              color: kButonsBackgroundColor,
              fontSize: 20,
            ),
            underline: Container(
              height: 5,
              color: kTextFormFieldBackgroundColor,
            ),
            value: dropDownValue,
            onChanged: (String? value) {
              setState(() {
                dropDownValue = value!;
              });
            },
            items: listPetsGender.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
