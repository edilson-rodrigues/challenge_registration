import 'package:challenge_registration/app/modules/login/widget/form/form_controller.dart';
import 'package:challenge_registration/app/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SubmitWidget extends StatelessWidget {
  final state = Modular.get<FormController>();

  @override
  Widget build(BuildContext context) {
    return ButtonWidget.primary(
      label: 'Login',
      onPressed: () => state.submit(),
    );
  }
}
