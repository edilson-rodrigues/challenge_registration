import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:challenge_registration/app/core/core.dart';
import 'package:challenge_registration/app/modules/login/widget/form/password_input/password_controller.dart';

class PasswordInputWidget extends StatefulWidget {
  final ValueChanged<String>? onChanged;

  PasswordInputWidget({Key? key, required this.onChanged}) : super(key: key);

  @override
  _PasswordInputWidgetState createState() => _PasswordInputWidgetState();
}

class _PasswordInputWidgetState
    extends ModularState<PasswordInputWidget, PasswordController> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: controller.isVisibilityNotifier,
      builder: (context, isVisibility, _) => TextFormField(
        style: TextStyle(
          color: AppColors.blueShade,
          fontWeight: FontWeight.w700,
        ),
        onChanged: widget.onChanged,
        validator: controller.validator,
        obscureText: isVisibility,
        inputFormatters: [
          LengthLimitingTextInputFormatter(32),
        ],
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Password',
          prefixIcon: Icon(
            Icons.vpn_key_outlined,
          ),
          errorStyle: TextStyle(
            color: AppColors.redShade[10],
          ),
          suffixIcon: IconButton(
            onPressed: () => controller.isVisibility = !isVisibility,
            icon: Icon(
              isVisibility
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
            ),
          ),
        ),
      ),
    );
  }
}
