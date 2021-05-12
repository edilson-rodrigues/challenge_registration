import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../app/modules/product/product_controller.dart';
import '../../../../../app/modules/product/widget/product_card/product_card_widget.dart';

class ProductListWidget extends StatefulWidget {
  ProductListWidget({Key? key}) : super(key: key);

  @override
  ProductListWidgetState createState() {
    return ProductListWidgetState();
  }
}

class ProductListWidgetState
    extends ModularState<ProductListWidget, ProductController> {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) => ListView.builder(
        itemCount: controller.productList.length,
        itemBuilder: (context, index) {
          var product = controller.productList[index];
          return ProductCardWidget(
            product: product,
            onPressed: () => controller.deleteProduct(product.id!),
          );
        },
      ),
    );
  }
}
