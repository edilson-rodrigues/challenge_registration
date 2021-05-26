import 'package:flutter/material.dart';
import 'package:challenge_registration/app/modules/login/login_controller.dart';

class FormController {
  LoginController loginController;
  FormController(this.loginController);

  final _formKey = GlobalKey<FormState>();

  GlobalKey<FormState> get formKey => _formKey;

  late String _userInput = '';
  late String _passwordInput = '';

  void userOnChange(String value) => _userInput = value;

  void passwordOnChange(String value) => _passwordInput = value;

  Future<void> submit() async {
    if (_formKey.currentState!.validate()) {
      var auth = [_userInput, _passwordInput];
      loginController.loginWithPasswordUser(auth);
    }
  }
}
