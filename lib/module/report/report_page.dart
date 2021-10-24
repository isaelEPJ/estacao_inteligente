import 'package:estacao_inteligente/data/report_type_data.dart';
import 'package:estacao_inteligente/module/report/subpages/select_demanda_page.dart';
import 'package:estacao_inteligente/module/report/widgets/register_tile.dart';
import 'package:estacao_inteligente/shared/model/report_model.dart';
import 'package:estacao_inteligente/shared/themes/app_colors.dart';
import 'package:estacao_inteligente/shared/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class ReportPage extends StatefulWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.whiteSecoundary,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              width: size.width,
              height: size.height * .15,
              alignment: Alignment.bottomCenter,
              child: Text(
                'Registrar',
                style: AppTextStyles.titleHome.copyWith(
                    color: Colors.black, fontWeight: FontWeight.normal),
              ),
            ),
            Container(
              height: size.height * .65,
              child: ListView.builder(
                itemCount: ReportType.length,
                itemBuilder: (BuildContext context, int index) {
                  ReportModel report = ReportType[index];
                  return RegisterTile(
                    report: report,
                    action: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SelectDemandaPage(),
                          ));
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
