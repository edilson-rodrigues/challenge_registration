import 'package:challenge_registration/app/modules/product/product_repository.dart';
import 'package:challenge_registration/app/modules/product/product_repository_interface.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/edit_product/edit_product_module.dart';
import 'modules/register_product/register_product_module.dart';
import 'product_controller.dart';
import 'widget/form_product/form_product_controller.dart';
import 'widget/product_filter/product_filter_controller.dart';

import '../../../app/modules/product/product_page.dart';

class ProductModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => ProductController()),
    Bind((i) => ProductFilterController()),
    Bind((i) => FormProductController()),
    Bind<IProductRepository>((i) => ProductRepository()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => ProductPage()),
    ModuleRoute('/register', module: RegisterModule()),
    ModuleRoute('/edit', module: EditProductModule()),
  ];
}
