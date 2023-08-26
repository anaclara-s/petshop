import 'package:flutter/material.dart';

class EmailWidget extends StatefulWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  const EmailWidget({super.key, required this.controller, this.validator});

  @override
  State<EmailWidget> createState() => _EmailWidgetState();
}

class _EmailWidgetState extends State<EmailWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(labelText: 'EMAIL'),
    );
  }
}
