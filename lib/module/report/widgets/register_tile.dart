import 'package:estacao_inteligente/shared/model/report_model.dart';
import 'package:estacao_inteligente/shared/themes/app_colors.dart';
import 'package:estacao_inteligente/shared/themes/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterTile extends StatelessWidget {
  final ReportModel report;
  final Function() action;
  const RegisterTile({Key? key, required this.report, required this.action})
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
                leading: Image.asset(report.status),
                title: Text(
                  report.name,
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
