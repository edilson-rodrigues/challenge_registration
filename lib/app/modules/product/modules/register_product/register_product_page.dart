import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:challenge_registration/app/modules/product/widget/form_product/form_product_controller.dart';
import 'package:challenge_registration/app/modules/product/widget/form_product/form_product_widget.dart';
import 'package:challenge_registration/app/shared/widget/button_widget.dart';

class RegisterProduct extends StatefulWidget {
  const RegisterProduct({Key? key}) : super(key: key);

  @override
  _RegisterProductState createState() => _RegisterProductState();
}

class _RegisterProductState
    extends ModularState<RegisterProduct, FormProductController> {
  bool isValid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de produto'),
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 13,
          ),
          child: FormProduct(),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(8.0),
        child: ValueListenableBuilder<bool>(
          valueListenable: controller.isValidNotify,
          builder: (context, isValid, child) => isValid
              ? ButtonWidget.primary(
                  onPressed: (){
                    controller.register().then((_) => {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Cadastro com sucesso!'),
                          duration: Duration(seconds: 2),
                        ),
                      ),
                      Navigator.of(context).maybePop(),
                    });
                  },
                  label: 'Salvar',
                )
              : SizedBox(),
        ),
      ),
    );
  }
}
