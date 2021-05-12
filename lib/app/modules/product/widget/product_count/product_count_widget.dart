import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../app/modules/product/product_controller.dart';

class ProductCountWidget extends StatefulWidget {
  const ProductCountWidget({Key? key}) : super(key: key);

  @override
  _ProductCountWidgetState createState() => _ProductCountWidgetState();
}

class _ProductCountWidgetState
    extends ModularState<ProductCountWidget, ProductController> {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        var product = controller.productList;
        return Text(
          product.length > 1
              ? '${product.length} produtos'
              : '${product.length} produto',
        );
      },
    );
  }
}
