import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../constants/constants.dart';

class CustomTextFormFieldWidget extends StatefulWidget {
  final TextEditingController controller;
  final int? maxLength;
  final bool? obscureText;
  final String labelText;
  final String? hintText;
  final bool? inputFormatters;
  final TextInputType? keyboardType;
  final VoidCallback? onChangeObscureText;
  final String? Function(String?)? validator;

  const CustomTextFormFieldWidget({
    super.key,
    required this.controller,
    this.maxLength,
    this.obscureText,
    required this.labelText,
    this.hintText,
    required this.inputFormatters,
    this.keyboardType,
    this.onChangeObscureText,
    this.validator,
  });

  @override
  State<CustomTextFormFieldWidget> createState() =>
      _CustomTextFormFieldWidgetState();
}

class _CustomTextFormFieldWidgetState extends State<CustomTextFormFieldWidget> {
  var cellFormat = MaskTextInputFormatter(
    mask: '(##) 9 ####-####',
    filter: {"#": RegExp(r'[0-9]')},
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      maxLength: widget.maxLength,
      validator: widget.validator,
      inputFormatters: widget.inputFormatters == null ? null : [cellFormat],
      obscureText: widget.obscureText ?? false,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        suffixIcon: widget.obscureText == null
            ? null
            : IconButton(
                icon: Icon(
                  widget.obscureText! ? Icons.visibility_off : Icons.visibility,
                  color: kButonsBackgroundColor,
                ),
                onPressed: widget.onChangeObscureText,
              ),
      ),
      keyboardType: widget.keyboardType,
    );
  }
}
