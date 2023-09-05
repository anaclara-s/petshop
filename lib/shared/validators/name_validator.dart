class NameValidator {
  static String? nameValidator(String? value) {
    if (value != null && value.isNotEmpty) {
      if (RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
        return null;
      } else {
        return 'Somente letras são permitidos no nome';
      }
    }
    return null;
  }
}
