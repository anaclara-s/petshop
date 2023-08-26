import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CellNumberWidget extends StatefulWidget {
  const CellNumberWidget({super.key});

  @override
  State<CellNumberWidget> createState() => _CellNumberWidgetState();
}

class _CellNumberWidgetState extends State<CellNumberWidget> {
  var formato = MaskTextInputFormatter(
    mask: '(##) 9 ####-####',
    filter: {"#": RegExp(r'[0-9]')},
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: [formato],
      keyboardType: TextInputType.number,
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: const InputDecoration(
        labelText: 'CELULAR',
        hintText: '(00) 0000-0000',
      ),
    );
  }
}
