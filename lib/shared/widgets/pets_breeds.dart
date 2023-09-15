import 'package:flutter/material.dart';

import '../lists/pets_breeds_list.dart';

class PetsBreedsWidget extends StatefulWidget {
  PetsBreedsWidget({super.key});

  @override
  State<PetsBreedsWidget> createState() => _PetsBreedsWidgetState();
}

class _PetsBreedsWidgetState extends State<PetsBreedsWidget> {
  String? selectedPetType;
  String? selectedBreed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton<String>(
          hint: Text('SELECIONE UM TIPO DE ANIMAL'),
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
        if (selectedPetType != null)
          DropdownButton<String>(
            hint: Text('SELECIONE UMA RAÇA'),
            value: selectedBreed,
            onChanged: (String? newValue) {
              setState(() {
                selectedBreed = newValue;
              });
            },
            items: (listBreeds[selectedPetType!] ?? []).map((String breed) {
              return DropdownMenuItem<String>(
                value: breed,
                child: Text(breed),
              );
            }).toList(),
          ),
      ],
    );
  }
}
