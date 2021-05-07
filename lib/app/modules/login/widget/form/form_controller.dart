import 'package:challenge_registration/app/modules/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FormController {
  final _formKey = GlobalKey<FormState>();

  GlobalKey<FormState> get formKey => _formKey;

  final _userInputNotifier = ValueNotifier<String>('');
  final _passwordInputNotifier = ValueNotifier<String>('');

  void userOnChange(String value) => _userInputNotifier.value = value;

  void passwordOnChange(String value) => _passwordInputNotifier.value = value;

  LoginController loginController = Modular.get();

  void submit() async {
    if (_formKey.currentState!.validate()) {
      var auth = [_userInputNotifier.value, _passwordInputNotifier.value];
      loginController.loginWithPasswordUser(auth);
    }
  }
}
