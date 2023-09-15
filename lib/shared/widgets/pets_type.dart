import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../lists/pets_types_list.dart';

class PetsTypesWidget extends StatefulWidget {
  const PetsTypesWidget({super.key});

  @override
  State<PetsTypesWidget> createState() => _PetsTypesWidgetState();
}

class _PetsTypesWidgetState extends State<PetsTypesWidget> {
  String dropDownValue = listTypesPets.first;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'TIPO DO PET *',
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: kButonsBackgroundColor),
        ),
        DropdownButton<String>(
          value: dropDownValue,
          dropdownColor: const Color.fromARGB(255, 250, 245, 243),
          icon: const Icon(
            Icons.arrow_downward_outlined,
            color: kButonsBackgroundColor,
          ),
          elevation: 16,
          style: const TextStyle(
            color: kButonsBackgroundColor,
            fontSize: 20,
          ),
          underline: Container(
            height: 5,
            width: 200,
            color: kTextFormFieldBackgroundColor,
          ),
          onChanged: (String? value) {
            setState(() {
              dropDownValue = value!;
            });
          },
          items: listTypesPets.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
    );
  }
}
