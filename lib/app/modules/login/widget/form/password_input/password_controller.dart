import 'package:flutter/foundation.dart';

class PasswordController {
  // state resposability to show password in input and change icon visibility
  final isVisibilityNotifier = ValueNotifier<bool>(true);

  bool get isVisibility => isVisibilityNotifier.value;

  set isVisibility(bool value) => isVisibilityNotifier.value = value;

  // validator textformfield - password
  String? validator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Preencha a senha.';
    } else if (value.length < 6) {
      return 'A senha deve conter 6 ou mais caracteres.';
    }
    return null;
  }
}
