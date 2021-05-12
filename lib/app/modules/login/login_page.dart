import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:challenge_registration/app/modules/login/login_controller.dart';
import 'package:challenge_registration/app/modules/login/widget/submit/submit_widget.dart';
import 'package:challenge_registration/app/modules/login/widget/top/top_widget.dart';
import 'widget/bottom/bottom_widget.dart';
import 'widget/form/form_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends ModularState<LoginPage, LoginController> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: TopWidget(context),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 13,
            ),
            child: SingleChildScrollView(
              child: FormWidget(),
            ),
          ),
        ),
        bottomNavigationBar: BottomWidget(
          child: SubmitWidget(),
        ),
      ),
    );
  }
}
