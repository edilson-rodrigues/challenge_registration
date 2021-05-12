import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:challenge_registration/app/modules/login/widget/form/form_controller.dart';

import 'password_input/password_input_widget.dart';
import 'user_input/user_input_widget.dart';

class FormWidget extends StatelessWidget {
  final state = Modular.get<FormController>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: state.formKey,
      child: Column(
        children: [
          UserInputWidget(
            onChanged: state.userOnChange,
          ),
          SizedBox(
            height: 20,
          ),
          PasswordInputWidget(
            onChanged: state.passwordOnChange,
          ),
        ],
      ),
    );
  }
}
