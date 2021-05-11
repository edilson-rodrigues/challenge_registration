import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../../app/modules/login/login_controller.dart';

class FormController {
  final _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> get formLoginKey => _formKey;

  String? _userInput;
  String? _passwordInput;

  void userOnChange(String value) => _userInput = value;
  void passwordOnChange(String value) => _passwordInput = value;

  LoginController loginController = Modular.get();

  // case inputs isValid
  // send values inputs controller login
  void submit() async {
    if (_formKey.currentState!.validate()) {
      var auth = [_userInput, _passwordInput];
      loginController.loginWithPasswordUser(auth);
    }
  }
}
