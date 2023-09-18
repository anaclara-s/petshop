import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../lists/pets/pets_breeds_list.dart';

class PetsBreedsWidget extends StatefulWidget {
  const PetsBreedsWidget({super.key});

  @override
  State<PetsBreedsWidget> createState() => _PetsBreedsWidgetState();
}

class _PetsBreedsWidgetState extends State<PetsBreedsWidget> {
  String? selectedPetType;
  String? selectedBreed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'TIPO DO PET *',
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: kButonsBackgroundColor),
        ),
        SizedBox(
          width: double.infinity,
          child: DropdownButton<String>(
            hint: const Text(
              'SELECIONE UM TIPO',
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
        ),
        if (selectedPetType != null)
          SizedBox(
            width: double.infinity,
            child: DropdownButton<String>(
              padding: const EdgeInsets.all(10),
              hint: const Text(
                'SELECIONE UMA RAÇA',
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
                width: 200,
                color: kTextFormFieldBackgroundColor,
              ),
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
              }).toList()
                ..sort((a, b) => (a.value ?? '').compareTo(b.value ?? '')),
            ),
          ),
      ],
    );
  }
}
