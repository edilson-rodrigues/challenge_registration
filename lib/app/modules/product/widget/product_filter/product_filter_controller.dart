import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../app/modules/product/product_controller.dart';
import 'product_filter_state.dart';

class ProductFilterController extends ChangeNotifier {
  // state dropdown value selected;
  late ProductOrderState dropdownValue = ProductOrderState.asc;

  // list dropdown
  final List<ProductOrderState> productOrderList = <ProductOrderState>[
    ProductOrderState.asc,
    ProductOrderState.desc,
    ProductOrderState.priceAsc,
    ProductOrderState.priceDesc,
    ProductOrderState.dateAsc,
    ProductOrderState.dateDesc,
  ];

  // set values on selected
  final ProductController productController = Modular.get();

  void Function(ProductOrderState?)? onChanged(ProductOrderState? newValue) {
    dropdownValue = newValue!;
    productController.filter(newValue);
    notifyListeners();
  }

  // menu dropdown
  String menuItem(ProductOrderState order) {
    notifyListeners();
    switch (order) {
      case ProductOrderState.asc:
        return 'AZ';
      case ProductOrderState.desc:
        return 'ZA';
      case ProductOrderState.priceAsc:
        return 'Preço decrescente';
      case ProductOrderState.priceDesc:
        return 'Preço crescente';
      case ProductOrderState.dateAsc:
        return 'Data crescente';
      case ProductOrderState.dateDesc:
        return 'Data decrecente';
      default:
        return 'invalid';
    }
  }
}
