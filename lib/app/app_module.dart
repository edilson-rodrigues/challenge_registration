import 'package:flutter_modular/flutter_modular.dart';

import 'package:challenge_registration/app/modules/login/login_module.dart';
import 'package:challenge_registration/app/shared/services/local_storage_service/local_storage_service.dart';
import 'package:challenge_registration/app/shared/shared.dart';

import 'modules/product/product_module.dart';
import 'modules/splash/splash_module.dart';

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
