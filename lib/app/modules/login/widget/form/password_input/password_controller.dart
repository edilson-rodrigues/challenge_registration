import 'package:flutter/foundation.dart';

class PasswordController {
  // estado responsavel pra exibir a senha no input e trocar o icon
  final isVisibilityNotifier = ValueNotifier<bool>(true);

  bool get isVisibility => isVisibilityNotifier.value;

  set isVisibility(bool value) => isVisibilityNotifier.value = value;

  // validator do textformfield - password
  String? validator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Preencha a senha.';
    } else if (value.length < 6) {
      return 'A senha deve conter 6 ou mais caracteres.';
    }
    return null;
  }
}
