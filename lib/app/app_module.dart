import 'package:flutter_modular/flutter_modular.dart';

import 'modules/login/login_module.dart';
import 'modules/product/product_module.dart';
import 'modules/splash/splash_module.dart';
import 'shared/services/local_storage_service/local_storage_service.dart';
import 'shared/services/local_storage_service/local_storage_service_interface.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind<ILocalStorage>((i) => SharedLocalStorageServices()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: SplashModule()),
    ModuleRoute('/login', module: LoginModule()),
    ModuleRoute('/product', module: ProductModule()),
  ];
}
