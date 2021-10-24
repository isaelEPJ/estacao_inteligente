import 'package:estacao_inteligente/shared/model/cptm_report_type.dart';
import 'package:estacao_inteligente/shared/model/pmsp_report_type.dart';
import 'package:estacao_inteligente/shared/themes/app_colors.dart';
import 'package:estacao_inteligente/shared/themes/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoriesTile extends StatelessWidget {
  final ReportModelCPTM? reportCPTM;
  final ReportModelPMSP? reportPMSP;
  final Function() action;
  const CategoriesTile(
      {Key? key, this.reportCPTM, this.reportPMSP, required this.action})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: action,
      child: Container(
        height: size.height * .12,
        padding: EdgeInsets.symmetric(horizontal: 10),
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 5,
            child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                leading:
                    Image.asset(reportCPTM?.status ?? reportPMSP?.status ?? ''),
                title: Text(
                  reportCPTM?.name ?? reportPMSP?.name ?? '',
                  style: AppTextStyles.normalTextBlack,
                ),
                trailing: Icon(
                  CupertinoIcons.right_chevron,
                  color: AppColors.primary,
                )),
          ),
        ),
      ),
    );
  }
}
