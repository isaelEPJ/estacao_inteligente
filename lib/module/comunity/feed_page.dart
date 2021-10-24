import 'package:estacao_inteligente/module/comunity/subpages/feed/feed_tab.dart';
import 'package:estacao_inteligente/module/comunity/subpages/table/table_tab.dart';
import 'package:estacao_inteligente/shared/themes/app_colors.dart';
import 'package:estacao_inteligente/shared/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.whiteSecoundary,
        appBar: AppBar(
          elevation: 0,
          title: Center(
              child: Text('Comunidade',
                  style: AppTextStyles.titleHome
                      .copyWith(fontSize: 24, color: Colors.black))),
          backgroundColor: AppColors.whitePrimary,
          bottom: TabBar(
            indicatorColor: AppColors.primary,
            isScrollable: false,
            tabs: [
              Tab(child: Text('Feed', style: AppTextStyles.titleListTile)),
              Tab(child: Text('Tabelas', style: AppTextStyles.titleListTile)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            FeedTab(),
            TableTab(),
          ],
        ),
      ),
    );
  }
}
