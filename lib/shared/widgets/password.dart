import 'package:flutter/material.dart';

import '../constants/constants.dart';

class PasswordWidget extends StatefulWidget {
  final TextEditingController controller;
  const PasswordWidget({super.key, required this.controller});

  @override
  State<PasswordWidget> createState() => _PasswordWidgetState();
}

class _PasswordWidgetState extends State<PasswordWidget> {
  bool _textOCulto = true;

  void _senhaVisibilidade() {
    setState(() {
      _textOCulto = !_textOCulto;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: _textOCulto,
      maxLength: 4,
      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      decoration: InputDecoration(
        labelText: 'SENHA',
        suffixIcon: IconButton(
          icon: Icon(
            _textOCulto ? Icons.visibility_off : Icons.visibility,
            color: kButonsBackgroundColor,
          ),
          onPressed: _senhaVisibilidade,
        ),
      ),
      keyboardType: TextInputType.number,
    );
  }
}
