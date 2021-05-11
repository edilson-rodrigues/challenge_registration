import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../../../app/modules/login/widget/form/password_input/password_controller.dart';
import '../../../../../../app/core/core.dart';

class PasswordInputWidget extends StatelessWidget {
  final ValueChanged<String>? onChanged;

  PasswordInputWidget({Key? key, required this.onChanged}) : super(key: key);

  final state = Modular.get<PasswordController>();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: state.isVisibilityNotifier,
      builder: (context, isVisibility, _) => TextFormField(
        style: TextStyle(
          color: AppColors.blueShade,
          fontWeight: FontWeight.w700,
        ),
        onChanged: onChanged,
        validator: state.validator,
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
            onPressed: () => state.isVisibility = !isVisibility,
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
