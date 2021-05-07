class UserInputController {
  // validator do textformfield - password
  String? validator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Preencha o seu login.';
    } else if (value.length < 6) {
      return 'O login deve conter 6 ou mais caracteres.';
    }
    return null;
  }
}
