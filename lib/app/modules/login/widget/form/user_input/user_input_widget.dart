import 'package:challenge_registration/app/core/core.dart';
import 'package:challenge_registration/app/modules/login/widget/form/user_input/user_input_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';

class UserInputWidget extends StatelessWidget {
  final ValueChanged<String>? onChanged;

  UserInputWidget({Key? key, required this.onChanged}) : super(key: key);
  final state = Modular.get<UserInputController>();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        color: AppColors.blueShade,
        fontWeight: FontWeight.w700,
      ),
      validator: state.validator,
      onChanged: onChanged,
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
