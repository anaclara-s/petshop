import 'package:flutter/material.dart';
import 'package:petshop/shared/constants/constants.dart';

import '../lists/pets_gender_list.dart';

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
        Text(
          'SEXO *',
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: kButonsBackgroundColor),
        ),
        DropdownButton(
          value: dropDownValue,
          style: TextStyle(
            color: kButonsBackgroundColor,
            fontSize: 20,
          ),
          underline: Container(
            height: 5,
            color: kTextFormFieldBackgroundColor,
          ),
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
      ],
    );
  }
}
