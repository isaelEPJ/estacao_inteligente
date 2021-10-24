import 'package:estacao_inteligente/module/comunity/feed_page.dart';
import 'package:estacao_inteligente/module/home/home_page.dart';
import 'package:estacao_inteligente/module/profile/profile_page.dart';
import 'package:estacao_inteligente/module/report/report_page.dart';
import 'package:estacao_inteligente/module/report/subpages/select_categorie_page_cptm.dart';
import 'package:estacao_inteligente/module/report/subpages/select_categorie_page_pmsp.dart';
import 'package:estacao_inteligente/module/report/subpages/select_demanda_page.dart';
import 'package:estacao_inteligente/module/signIn/signIn_page.dart';
import 'package:estacao_inteligente/module/signUp/signUp_page.dart';
import 'package:estacao_inteligente/module/splash/splash_page.dart';
import 'package:estacao_inteligente/shared/model/user_model.dart';
import 'package:estacao_inteligente/shared/themes/app_colors.dart';
import 'package:estacao_inteligente/shared/themes/app_text_names.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
        '/feed': (context) => FeedPage(),
        '/report': (context) => ReportPage(),
        '/profile': (context) => ProfilePage(
            user: ModalRoute.of(context)!.settings.arguments as UserModel),
        '/home': (context) => HomePage(
            user: ModalRoute.of(context)!.settings.arguments as UserModel),
        '/demanda': (context) => SelectDemandaPage(),
        '/categorie-cptm': (context) => SelectCategoriePageCPTM(),
        '/categorie-pmsp': (context) => SelectCategoriePagePMSP(),
      },
    );
  }
}
