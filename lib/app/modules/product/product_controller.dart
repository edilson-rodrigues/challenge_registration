import 'package:challenge_registration/app/modules/product/product_repository_interface.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'widget/product_filter/product_filter_state.dart';

import '../../../app/modules/product/models/product_model.dart';

// controller with change notifier
class ProductController extends ChangeNotifier {
  List<ProductModel> productList = [];

  final IProductRepository productRepository = Modular.get();

  void setProductLocalStorage() async {
    await productRepository.setProductLocalStorage(productList);
  }

  Future<void> getProductLocalStorage() async {
    var productLocal = await productRepository.getProductLocalStorage();

    if (productLocal != null) {
      productList = productLocal;
    }

    notifyListeners();
  }

  // end local storage

  // register product
  void setProduct(ProductModel product) {
    productList = [...productList, product];
    setProductLocalStorage();
    notifyListeners();
  }

  // update products - get index by id
  void updateProduct(ProductModel product) {
    var index = productList.indexWhere((element) => element.id == product.id);
    productList[index] = product;

    setProductLocalStorage();

    notifyListeners();
  }

  // remove products index by id
  void deleteProduct(int id) {
    var index = productList.indexWhere((element) => element.id == id);
    productList.removeAt(index);

    setProductLocalStorage();

    notifyListeners();
  }

  // case use filter list products
  void filter(ProductOrderState order) {
    switch (order) {
      case ProductOrderState.asc:
        productList.sort((a, b) => a.name.compareTo(b.name));
        break;

      case ProductOrderState.desc:
        productList.sort((b, a) => a.name.compareTo(b.name));
        break;

      case ProductOrderState.dateAsc:
        productList.sort((a, b) => b.price!.compareTo(a.price!));
        break;

      case ProductOrderState.dateDesc:
        productList.sort((b, a) => b.price!.compareTo(a.price!));
        break;

      case ProductOrderState.priceAsc:
        productList.sort((a, b) => b.date!.compareTo(a.date!));
        break;

      case ProductOrderState.priceDesc:
        productList.sort((b, a) => b.date!.compareTo(a.date!));
        break;
    }

    notifyListeners();
  }
}
