import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../app/core/core.dart';
import '../../../../../app/shared/shared.dart';
import 'form_product_controller.dart';

class FormProduct extends StatefulWidget {
  final int? tagHero;
  FormProduct({Key? key, this.tagHero}) : super(key: key);

  @override
  _FormProductState createState() => _FormProductState();
}

class _FormProductState
    extends ModularState<FormProduct, FormProductController> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formProductKey,
      child: ListView(
        children: [
          Hero(
            tag: '${widget.tagHero}',
            child: Image.asset(
              AppImages.defaultImage,
              height: 300,
              semanticLabel: 'imagem padrão',
            ),
          ),
          InputTextWidget(
            labelText: '* Nome',
            validator: controller.validator,
            onChanged: controller.onChangeRequerid,
            textEditingController: controller.nameController,
          ),
          SizedBox(
            height: 10,
          ),
          InputTextWidget.cash(
            labelText: 'Preço',
            textEditingController: controller.priceController,
          ),
          SizedBox(
            height: 10,
          ),
          InputTextWidget.number(
            labelText: '* Quantidade em estoque',
            validator: controller.validator,
            onChanged: controller.onChangeRequerid,
            textEditingController: controller.quantityController,
          ),
          SizedBox(
            height: 10,
          ),
          InputTextWidget.number(
            labelText: '* Código do produto',
            validator: controller.validator,
            onChanged: controller.onChangeRequerid,
            textEditingController: controller.codeNumberController,
            suffixIcon: IconButton(
              icon: Icon(Icons.camera),
              onPressed: () {
                print('abrir camera');
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
