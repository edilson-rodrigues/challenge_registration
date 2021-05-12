import 'package:flutter_modular/flutter_modular.dart';

import 'register_product_page.dart';

class RegisterModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => RegisterProduct())
  ];
}
