import 'package:flutter/material.dart';

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
      keyboardType: TextInputType.number,
      maxLength: 4,
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        labelText: 'SENHA',
        suffixIcon: IconButton(
          icon: Icon(
            _textOCulto ? Icons.visibility_off : Icons.visibility,
            color: const Color.fromARGB(255, 230, 94, 93),
          ),
          onPressed: _senhaVisibilidade,
        ),
      ),
    );
  }
}
