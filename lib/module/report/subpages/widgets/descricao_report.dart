import 'package:estacao_inteligente/shared/themes/app_colors.dart';
import 'package:estacao_inteligente/shared/themes/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DescricaoReport extends StatefulWidget {
  const DescricaoReport({
    Key? key,
  }) : super(key: key);

  @override
  _DescricaoReportState createState() => _DescricaoReportState();
}

class _DescricaoReportState extends State<DescricaoReport> {
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      'Adicionar descriçao',
                      overflow: TextOverflow.fade,
                      style: AppTextStyles.titleHome
                          .copyWith(fontSize: 22, color: Colors.black),
                    ),
                  ),
                  Container(width: _size.width * .1),
                ],
              ),
              Container(width: _size.width * .1),
            ],
          ),
        ),
      ),
      body: Scaffold(
          backgroundColor: AppColors.whiteSecoundary,
          body: Column(
            children: [
              Text(
                'Escreva aqui',
                textAlign: TextAlign.start,
                style: AppTextStyles.normalTextBlack
                    .copyWith(color: Colors.grey, fontSize: 14),
              ),
              Container(height: 5),
              Container(
                height: _size.height * .25,
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Container(
                width: _size.width,
                height: _size.height * .08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    primary: AppColors.primary,
                  ),
                  child: Text(
                    'Enviar',
                    style: AppTextStyles.normalTextBackground
                        .copyWith(fontSize: 17),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                  height: _size.height * .4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.red,
                  ),
                  child: Column(
                    children: [],
                  )),
            ],
          )),
    );
  }
}
