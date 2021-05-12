import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:challenge_registration/app/modules/login/login_controller.dart';

class FormController {
  final _formKey = GlobalKey<FormState>();

  GlobalKey<FormState> get formKey => _formKey;

  late String _userInput = '';
  late String _passwordInput = '';

  void userOnChange(String value) => _userInput = value;

  void passwordOnChange(String value) => _passwordInput = value;

  LoginController loginController = Modular.get();

  Future<void> submit() async {
    if (_formKey.currentState!.validate()) {
      var auth = [_userInput, _passwordInput];
      loginController.loginWithPasswordUser(auth);
    }
  }
}
