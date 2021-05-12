import 'package:flutter_modular/flutter_modular.dart';

import 'edit_product_page.dart';

class EditProductModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, args) => ProductEditPage(
        product: args.data,
      ),
    ),
  ];
}
