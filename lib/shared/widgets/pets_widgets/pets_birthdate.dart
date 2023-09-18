import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../constants/constants.dart';

class PetsBirthdateWidget extends StatefulWidget {
  const PetsBirthdateWidget({super.key});

  @override
  State<PetsBirthdateWidget> createState() => _PetsBirthdateWidgetState();
}

class _PetsBirthdateWidgetState extends State<PetsBirthdateWidget> {
  TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'DATA DE NASCIMENTO * ',
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: kButonsBackgroundColor),
        ),
        TextFormField(
          style: const TextStyle(color: Colors.white),
          controller: dateController,
          onTap: () async {
            FocusScope.of(context).requestFocus(FocusNode());
            final DateTime? picked = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime.now(),
              builder: (BuildContext context, Widget? child) {
                return Theme(
                  data: ThemeData.light().copyWith(
                    colorScheme:
                        const ColorScheme.light(primary: kButonsBackgroundColor),
                  ),
                  child: child!,
                );
              },
            );
            if (picked != null && picked != DateTime.now()) {
              dateController.text = DateFormat('dd/MM/yyyy').format(picked);
            }
          },
        ),
      ],
    );
  }
}
