class CustomValidators {
  static String? emailValidador(String? value) {
    if (value == null || value.isEmpty) {
      return 'OBRIGATÓRIO';
    } else if (!value.contains('@') || !value.contains('.')) {
      return 'INVÁLIDO';
    }
    return null;
  }
}
