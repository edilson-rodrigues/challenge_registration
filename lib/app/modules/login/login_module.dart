import 'package:flutter_modular/flutter_modular.dart';

import 'package:challenge_registration/app/modules/login/login_Page.dart';
import 'package:challenge_registration/app/modules/login/login_controller.dart';
import 'package:challenge_registration/app/shared/auth/auth_controller.dart';
import 'package:challenge_registration/app/shared/auth/repositories/auth_repository.dart';
import 'package:challenge_registration/app/shared/auth/repositories/auth_repository_interface.dart';
import 'widget/form/form_controller.dart';
import 'widget/form/password_input/password_controller.dart';
import 'widget/form/user_input/user_input_controller.dart';

class LoginModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LoginController(i(), i())),
    Bind<IAuthRepository>((i) => AuthRepository()),
    Bind((i) => AuthController(i(), i())),
    Bind((i) => UserInputController()),
    Bind((i) => PasswordController()),
    Bind((i) => FormController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => LoginPage()),
  ];
}
