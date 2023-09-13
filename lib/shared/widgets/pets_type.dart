import 'package:flutter/material.dart';

import '../constants/constants.dart';

List<String> listTypesPets = <String>['TIPO DO PET', 'CACHORRO', 'GATO', 'AVE'];

class PetsTypesWidget extends StatefulWidget {
  const PetsTypesWidget({super.key});

  @override
  State<PetsTypesWidget> createState() => _PetsTypesWidgetState();
}

class _PetsTypesWidgetState extends State<PetsTypesWidget> {
  String dropDownValue = listTypesPets.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
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
    );
  }
}
