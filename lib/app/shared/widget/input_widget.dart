import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:brasil_fields/brasil_fields.dart';
import '../../../app/core/core.dart';

class InputTextWidget extends StatelessWidget {
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final String? labelText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final TextEditingController? textEditingController;

  const InputTextWidget({
    Key? key,
    this.onChanged,
    this.validator,
    required this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    this.inputFormatters,
    this.keyboardType,
    this.textEditingController,
  }) : super(key: key);

  // create inputText type number, to digits only
  InputTextWidget.number({
    void Function(String)? onChanged,
    String? Function(String?)? validator,
    TextEditingController? textEditingController,
    required String? labelText,
    Widget? prefixIcon,
    Widget? suffixIcon,
  })  : validator = validator,
        onChanged = onChanged,
        labelText = labelText,
        prefixIcon = prefixIcon,
        suffixIcon = suffixIcon,
        inputFormatters = <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ],
        keyboardType = TextInputType.number,
        textEditingController = textEditingController;

// create inputText type prBr cash, to digits only
  InputTextWidget.cash({
    void Function(String)? onChanged,
    String? Function(String?)? validator,
    TextEditingController? textEditingController,
    required String? labelText,
    Widget? prefixIcon,
    Widget? suffixIcon,
  })  : validator = validator,
        onChanged = onChanged,
        labelText = labelText,
        prefixIcon = prefixIcon,
        suffixIcon = suffixIcon,
        inputFormatters = <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly,
          RealInputFormatter(
            centavos: true,
          ),
        ],
        keyboardType = TextInputType.number,
        textEditingController = textEditingController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        color: AppColors.blueShade,
        fontWeight: FontWeight.w700,
      ),
      controller: textEditingController,
      validator: validator,
      onChanged: onChanged,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
