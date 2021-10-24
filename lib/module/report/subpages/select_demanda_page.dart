import 'package:estacao_inteligente/shared/themes/app_colors.dart';
import 'package:estacao_inteligente/shared/themes/app_images.dart';
import 'package:estacao_inteligente/shared/themes/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectDemandaPage extends StatefulWidget {
  const SelectDemandaPage({Key? key}) : super(key: key);

  @override
  _SelectDemandaPageState createState() => _SelectDemandaPageState();
}

class _SelectDemandaPageState extends State<SelectDemandaPage> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(_size.height),
        child: Container(
          width: _size.width,
          height: _size.height * .25,
          color: AppColors.whiteSecoundary,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                        height: _size.height * .15,
                        padding: const EdgeInsets.all(10),
                        alignment: Alignment.center,
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
          height: _size.height * .3,
          padding: const EdgeInsets.all(15),
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/categorie-cptm');
                },
                child: Container(
                  width: _size.width * .4,
                  height: _size.height * .25,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.whitePrimary.withOpacity(0.7),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(AppImages.cptm),
                      Text(
                        'CPTM',
                        overflow: TextOverflow.fade,
                        style:
                            AppTextStyles.titleListTile.copyWith(fontSize: 21),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/categorie-pmsp');
                },
                child: Container(
                  width: _size.width * .4,
                  height: _size.height * .25,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.whitePrimary.withOpacity(0.7),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(AppImages.prefeitura),
                      Text(
                        'Prefeitura de são paulo',
                        overflow: TextOverflow.fade,
                        textAlign: TextAlign.center,
                        style:
                            AppTextStyles.titleListTile.copyWith(fontSize: 17),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategorieReport1 {
  final String type;

  CategorieReport1(this.type);
}
