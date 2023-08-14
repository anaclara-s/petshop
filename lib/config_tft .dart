import 'package:flutter/material.dart';

class VisibilidadeSenha extends StatefulWidget {
  final TextEditingController controller;
  VisibilidadeSenha({required this.controller});

  @override
  State<VisibilidadeSenha> createState() => _VisibilidadeSenhaState();
}

class _VisibilidadeSenhaState extends State<VisibilidadeSenha> {
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
      //
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Color.fromARGB(255, 243, 171, 165),
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 230, 94, 93),
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 230, 94, 93),
          ),
        ),
        labelText: 'SENHA',
        labelStyle: const TextStyle(
          color: Color.fromARGB(255, 251, 235, 228),
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        suffixIcon: IconButton(
          icon: Icon(
            _textOCulto ? Icons.visibility_off : Icons.visibility,
            color: Color.fromARGB(255, 230, 94, 93),
          ),
          onPressed: _senhaVisibilidade,
        ),
      ),
    );
  }
}
