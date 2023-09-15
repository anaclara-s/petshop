import 'package:flutter/material.dart';

import 'package:petshop/shared/constants/constants.dart';
import 'package:petshop/shared/lists/pets_syzes_list.dart';

class PetsSizeWidget extends StatefulWidget {
  const PetsSizeWidget({super.key});

  @override
  State<PetsSizeWidget> createState() => _PetsSizeWidgetState();
}

class _PetsSizeWidgetState extends State<PetsSizeWidget> {
  String dropDownValue = listSizePets.first;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'PORTE *',
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
          items: listSizePets.map<DropdownMenuItem<String>>((String value) {
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
