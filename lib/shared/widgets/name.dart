import 'package:flutter/material.dart';

class NameWidget extends StatefulWidget {
  const NameWidget({super.key});

  @override
  State<NameWidget> createState() => _NameWidgetState();
}

class _NameWidgetState extends State<NameWidget> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _textEditingController,
      maxLength: 30,
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: const InputDecoration(
        labelText: 'NOME DO TUTOR',
      ),
    );
  }
}
