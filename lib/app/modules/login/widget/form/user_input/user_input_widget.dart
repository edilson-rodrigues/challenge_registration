import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:challenge_registration/app/core/core.dart';
import 'package:challenge_registration/app/modules/login/widget/form/user_input/user_input_controller.dart';

class UserInputWidget extends StatefulWidget {
  final ValueChanged<String>? onChanged;

  UserInputWidget({Key? key, required this.onChanged}) : super(key: key);

  @override
  _UserInputWidgetState createState() => _UserInputWidgetState();
}

class _UserInputWidgetState
    extends ModularState<UserInputWidget, UserInputController> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        color: AppColors.blueShade,
        fontWeight: FontWeight.w700,
      ),
      validator: controller.validator,
      onChanged: widget.onChanged,
      inputFormatters: [
        LengthLimitingTextInputFormatter(32),
      ],
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Login',
        prefixIcon: Icon(
          Icons.person_outline,
        ),
      ),
    );
  }
}
