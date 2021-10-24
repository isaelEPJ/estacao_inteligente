import 'package:estacao_inteligente/shared/themes/app_colors.dart';
import 'package:estacao_inteligente/shared/themes/app_text_styles.dart';
import 'package:estacao_inteligente/shared/widgets/search_location.dart';
import 'package:flutter/material.dart';

class BottomSheetContent extends StatelessWidget {
  const BottomSheetContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {},
      child: Container(
        height: _size.height * .2,
        width: _size.width,
        color: AppColors.whitePrimary.withOpacity(0.7),
        child: Column(
          children: [
            Container(
              width: _size.width * .8,
              height: _size.height * .1,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  primary: AppColors.primary,
                  elevation: 0,
                ),
                onPressed: () {},
                child: Text(
                  'Usar localização atual',
                  style: AppTextStyles.titleListTile,
                ),
              ),
            ),
            Container(
              width: _size.width * .8,
              height: _size.height * .1,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  primary: AppColors.primary,
                  elevation: 0,
                ),
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (bilder) {
                        return SearchLocation();
                      });
                },
                child: Text(
                  'Digitar Localizaçao',
                  style: AppTextStyles.titleListTile,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
