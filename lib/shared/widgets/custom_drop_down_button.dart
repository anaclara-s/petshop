import 'package:flutter/material.dart';

import '../constants/constants.dart';

class CustomDropDownButton extends StatefulWidget {
  final List<DropdownMenuItem<String>>? items;
  final String? value;
  final Function(String?)? onChanged;
  final Widget? hint;

  const CustomDropDownButton(
      {super.key, this.items, this.value, this.onChanged, this.hint});

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: DropdownButton(
        items: widget.items,
        value: widget.value,
        onChanged: widget.onChanged,
        hint: widget.hint,
        icon: const Icon(
          Icons.arrow_downward_outlined,
          color: kButonsBackgroundColor,
          size: 18,
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
      ),
    );
  }
}
