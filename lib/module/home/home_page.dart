import 'package:estacao_inteligente/module/comunity/feed_page.dart';
import 'package:estacao_inteligente/module/map/map_page.dart';
import 'package:estacao_inteligente/module/profile/profile_page.dart';
import 'package:estacao_inteligente/module/report/report_page.dart';
import 'package:estacao_inteligente/shared/model/user_model.dart';
import 'package:estacao_inteligente/shared/themes/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final UserModel user;
  HomePage({Key? key, required this.user}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();
  @override
  @override
  Widget build(BuildContext context) {
    final pages = [
      MapPage(user: widget.user),
      FeedPage(),
      ReportPage(),
      ProfilePage(user: widget.user),
    ];
    return Scaffold(
        body: pages[controller.currentPage],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 10,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          currentIndex: controller.currentPage,
          onTap: (index) {
            setState(() {
              controller.setPage(index);
              // pages[0] = ContentPage(user: widget.user);
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.location), label: 'Mapa'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.line_horizontal_3_decrease),
                label: 'Comunidade'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.add_circled), label: 'Adicionar'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person), label: 'Perfil')
          ],
        ));
  }
}
