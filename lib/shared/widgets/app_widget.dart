import 'package:estacao_inteligente/module/home/home_page.dart';
import 'package:estacao_inteligente/module/signIn/signIn_page.dart';
import 'package:estacao_inteligente/module/signUp/signUp_page.dart';
import 'package:estacao_inteligente/module/splash/splash_page.dart';
import 'package:estacao_inteligente/shared/model/user_model.dart';
import 'package:estacao_inteligente/shared/themes/app_colors.dart';
import 'package:estacao_inteligente/shared/themes/app_text_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppWidget extends StatelessWidget {
  AppWidget() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark));
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppTextNames.nameApp,
      theme: ThemeData(primaryColor: AppColors.whitePrimary),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashPage(),
        '/login': (context) => SignInPage(),
        '/register': (context) => SignUpPage(),
        '/home': (context) => HomePage(
            user: ModalRoute.of(context)!.settings.arguments as UserModel),
      },
    );
  }
}
