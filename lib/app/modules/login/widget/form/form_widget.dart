import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:challenge_registration/app/modules/login/widget/form/form_controller.dart';

import 'password_input/password_input_widget.dart';
import 'user_input/user_input_widget.dart';

class FormWidget extends StatefulWidget {
  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends ModularState<FormWidget, FormController> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          UserInputWidget(
            onChanged: controller.userOnChange,
          ),
          SizedBox(
            height: 20,
          ),
          PasswordInputWidget(
            onChanged: controller.passwordOnChange,
          ),
        ],
      ),
    );
  }
}
