import 'package:estacao_inteligente/shared/themes/app_colors.dart';
import 'package:estacao_inteligente/shared/themes/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SucessPage extends StatelessWidget {
  const SucessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: _size.width,
                height: _size.height * .2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Card(
                  elevation: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 40,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              color: AppColors.primary,
                              width: 3,
                              // height: _size,
                            ),
                            Icon(
                              CupertinoIcons.checkmark_circle_fill,
                              color: AppColors.primary,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: _size.height * .12,
                        child: Column(
                          children: [
                            Container(
                              width: _size.width * .75,
                              child: Text(
                                'Tudo Certo!',
                                textAlign: TextAlign.start,
                                style: AppTextStyles.titleListTile,
                              ),
                            ),
                            Container(
                              width: _size.width * .75,
                              child: Text(
                                'Agradecemos por nos ajudar a transformar a mobilidade urbana de São Paulo.',
                                textAlign: TextAlign.start,
                                style: AppTextStyles.normalTextBlack
                                    .copyWith(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
            Container(height: _size.height * .03),
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
                  'Voltar',
                  style:
                      AppTextStyles.normalTextBackground.copyWith(fontSize: 17),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
