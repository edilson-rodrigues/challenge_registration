import 'models/product_model.dart';

abstract class IProductRepository{
  Future<void> setProductLocalStorage(List<ProductModel> products);

  Future<List<ProductModel>?> getProductLocalStorage();
}