import 'dart:convert';

import 'package:challenge_registration/app/shared/services/local_storage_service/local_storage_service.dart';

import 'models/product_model.dart';
import 'product_repository_interface.dart';

class ProductRepository implements IProductRepository {
  SharedLocalStorageServices sharedLocalStorageServices;
  ProductRepository(this.sharedLocalStorageServices);

  @override
  Future<void> setProductLocalStorage(List<ProductModel> products) async {
    var productListString = [];

    products.forEach((element) {
      var product = ProductModel(
        id: element.id,
        quantityStock: element.quantityStock,
        codeNumber: element.codeNumber,
        name: element.name,
        date: element.date,
        price: element.price,
      ).toJson();

      productListString = [...productListString, product];
    });

    // save data - product list
    await sharedLocalStorageServices.put(
        'product', jsonEncode(productListString));
  }

  @override
  Future<List<ProductModel>?> getProductLocalStorage() async {
    var products = await sharedLocalStorageServices.get('product');
    if (products != null) {
      final list = jsonDecode(products) as List;
      return list.map((e) => ProductModel.fromJson(e)).toList();
    }
  }
}
