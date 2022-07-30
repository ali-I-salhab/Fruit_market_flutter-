import 'package:flutter/material.dart';
import 'package:fruitsmarket/core/const.dart';
import 'package:fruitsmarket/features/auth/presentation/pages/login/widgets/loginViewbody.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginViewBody(),
    );
  }
}
