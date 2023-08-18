import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Nome extends StatefulWidget {
  const Nome({super.key});

  @override
  State<Nome> createState() => _NomeState();
}

class _NomeState extends State<Nome> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _textEditingController,
      maxLength: 30,
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color.fromARGB(255, 243, 171, 165),
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
        labelText: 'NOME (TUTOR)',
        labelStyle: const TextStyle(
          color: Color.fromARGB(255, 251, 235, 228),
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class Email extends StatefulWidget {
  final TextEditingController controller;
  const Email({super.key, required this.controller});

  @override
  State<Email> createState() => _EmailState();
}

String? emailValidador(String? value) {
  if (value == null || value.isEmpty) {
    return 'OBRIGATÓRIO';
  } else if (!value.contains('@') || !value.contains('.')) {
    return 'INVÁLIDO';
  }
  return null;
}

class _EmailState extends State<Email> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: emailValidador,
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color.fromARGB(255, 243, 171, 165),
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
        labelText: 'EMAIL',
        labelStyle: const TextStyle(
          color: Color.fromARGB(255, 251, 235, 228),
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class Celular extends StatefulWidget {
  const Celular({super.key});

  @override
  State<Celular> createState() => _CelularState();
}

class _CelularState extends State<Celular> {
  var formato = MaskTextInputFormatter(
    mask: '(##) 9 ####-####',
    filter: {"#": RegExp(r'[0-9]')},
  );

  @override
  Widget build(BuildContext context) {
    return TextField(
      inputFormatters: [formato],
      keyboardType: TextInputType.number,
      //
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color.fromARGB(255, 243, 171, 165),
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
        labelText: 'CELULAR',
        hintText: '(00) 0000-0000',
        hintStyle: const TextStyle(
          color: Color.fromARGB(172, 255, 255, 255),
          fontSize: 15,
        ),
        labelStyle: const TextStyle(
          color: Color.fromARGB(255, 251, 235, 228),
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class Senha extends StatefulWidget {
  final TextEditingController controller;
  const Senha({super.key, required this.controller});

  @override
  State<Senha> createState() => _SenhaState();
}

class _SenhaState extends State<Senha> {
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
        fillColor: const Color.fromARGB(255, 243, 171, 165),
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
            color: const Color.fromARGB(255, 230, 94, 93),
          ),
          onPressed: _senhaVisibilidade,
        ),
      ),
    );
  }
}
