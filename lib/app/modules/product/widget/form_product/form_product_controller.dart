import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:challenge_registration/app/modules/product/models/product_model.dart';
import 'package:challenge_registration/app/modules/product/product_controller.dart';
import 'package:challenge_registration/app/shared/intl/format_number.dart';


class FormProductController {
  // key form products
  final _formKey = GlobalKey<FormState>();

  GlobalKey<FormState> get formProductKey => _formKey;

  // controller inputs
  final TextEditingController nameController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();
  final TextEditingController codeNumberController = TextEditingController();

  // validate inputs required to show button save
  final ValueNotifier<bool> isValidNotify = ValueNotifier<bool>(false);

  bool get isValid => isValidNotify.value;

  set isValid(bool value) => isValidNotify.value = value;

  // onChange textFormField
  void onChangeRequerid(String value) => {
        requiredInputsValidate(),
      };

  // validator textFormFields
  String? validator(String? value) {
    if (value == null || value.isEmpty) {
      return 'campo obrigatório';
    }
    return null;
  }

  // validator inputs require to show button save
  void requiredInputsValidate() async {
    if (_formKey.currentState!.validate()) {
      isValid = true;
    } else {
      isValid = false;
    }
  }

  // get controller to send(submit) values ProductModel
  final ProductController productController = Modular.get();

  Future<void> register() async{
    if (_formKey.currentState!.validate()) {
      // create new product
      productController.setProduct(
        ProductModel.product(
          name: nameController,
          quantityStock: quantityController,
          codeNumber: codeNumberController,
          price: priceController,
          date: DateTime.now(),
          id: Random().nextInt(1000),
        ),
      );
      // dont show button
      isValid = false;
    }
  }

  Future<void> update({required int id}) async {
    if (_formKey.currentState!.validate()) {
      productController.updateProduct(
        ProductModel.product(
          name: nameController,
          quantityStock: quantityController,
          codeNumber: codeNumberController,
          price: priceController,
          date: DateTime.now(),
          id: id,
        ),
      );
    }
  }

  Future<void> remove({required int id}) async {
    productController.deleteProduct(id);
  }

  void editInputs(ProductModel product) {
    nameController.text = product.name;
    priceController.text = FormatNumber().currency(product.price!);
    quantityController.text = '${product.quantityStock}';
    codeNumberController.text = '${product.codeNumber}';
  }
}
