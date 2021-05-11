import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../../app/modules/login/widget/form/form_controller.dart';
import '../../../../../app/shared/shared.dart';

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
