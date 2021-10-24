import 'package:estacao_inteligente/data/linha_data.dart';
import 'package:estacao_inteligente/module/comunity/subpages/table/widgets/line_item.dart';
import 'package:estacao_inteligente/shared/model/linha_model.dart';
import 'package:estacao_inteligente/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';

class TableTab extends StatefulWidget {
  const TableTab({Key? key}) : super(key: key);

  @override
  _TableTabState createState() => _TableTabState();
}

class _TableTabState extends State<TableTab> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      color: AppColors.whitePrimary,
      child: Column(
        children: [
          Container(
            height: size.height * .12,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('20%'),
                    Text('40%'),
                    Text('60%'),
                    Text('80%'),
                    Text('100%'),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: size.height * .6,
            width: size.width,
            child: ListView.builder(
              itemCount: LinhaData.length,
              itemBuilder: (BuildContext context, int index) {
                final LinhaModel line = LinhaData[index];
                return LinheItem(line: line);
              },
            ),
          ),
        ],
      ),
    );
  }
}
