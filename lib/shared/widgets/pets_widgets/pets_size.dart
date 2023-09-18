import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../lists/pets/pets_syzes_list.dart';

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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'PORTE *',
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: kButonsBackgroundColor),
        ),
        SizedBox(
          width: double.infinity,
          child: DropdownButton<String>(
            hint: const Text(
              'SELECIONE O PORTE',
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
            items: listSizePets.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
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
