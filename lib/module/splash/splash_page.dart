import 'package:estacao_inteligente/shared/auth/auth_controller.dart';
import 'package:estacao_inteligente/shared/themes/app_images.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _authController = AuthController();
    _authController.currentUser(context);
    return Scaffold(
      body: Center(
        child: Image.asset(AppImages.logoFull),
      ),
    );
  }
}
