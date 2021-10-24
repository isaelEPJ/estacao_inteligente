import 'package:estacao_inteligente/data/report_type_CPTM.dart';
import 'package:estacao_inteligente/data/report_type_PMSP.dart';
import 'package:estacao_inteligente/module/report/subpages/widgets/categories_tile.dart';
import 'package:estacao_inteligente/module/report/subpages/widgets/descricao_report.dart';
import 'package:estacao_inteligente/shared/model/pmsp_report_type.dart';
import 'package:estacao_inteligente/shared/themes/app_colors.dart';
import 'package:estacao_inteligente/shared/themes/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectCategoriePagePMSP extends StatefulWidget {
  const SelectCategoriePagePMSP({
    Key? key,
  }) : super(key: key);

  @override
  _SelectCategoriePagePMSPState createState() =>
      _SelectCategoriePagePMSPState();
}

class _SelectCategoriePagePMSPState extends State<SelectCategoriePagePMSP> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(_size.height * .2),
        child: Container(
          width: _size.width,
          height: _size.height * .2,
          alignment: Alignment.bottomCenter,
          color: AppColors.whiteSecoundary,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          CupertinoIcons.left_chevron,
                          size: 25,
                        ),
                      ),
                      Container(
                        width: _size.width * .7,
                        height: _size.height * .1,
                        padding: const EdgeInsets.all(10),
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Registrar',
                          overflow: TextOverflow.fade,
                          style: AppTextStyles.titleHome
                              .copyWith(fontSize: 24, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: _size.width * .1,
                  ),
                ],
              ),
              Container(
                width: _size.width,
                height: _size.height * .1,
                padding: const EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Por onde você deseja enviar essa demanda?',
                  overflow: TextOverflow.fade,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.normalTextBlack.copyWith(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Scaffold(
        backgroundColor: AppColors.whiteSecoundary,
        body: Container(
          width: _size.width,
          height: _size.height * .8,
          padding: const EdgeInsets.all(15),
          alignment: Alignment.centerLeft,
          child: Container(
            height: _size.height * .8,
            margin: EdgeInsets.only(bottom: 20),
            child: ListView.builder(
              itemCount: ReportTypeCPTM.length,
              itemBuilder: (BuildContext context, int index) {
                final ReportModelPMSP report = ReportTypePMSP[index];
                return CategoriesTile(
                    reportPMSP: report,
                    action: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DescricaoReport()));
                    });
              },
            ),
          ),
        ),
      ),
    );
  }
}
