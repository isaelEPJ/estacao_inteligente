import 'package:estacao_inteligente/shared/model/user_model.dart';
import 'package:estacao_inteligente/shared/themes/app_colors.dart';
import 'package:estacao_inteligente/shared/themes/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  final UserModel user;
  const ProfilePage({Key? key, required this.user}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.whiteSecoundary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.height * .2),
        child: Container(
          width: size.width,
          height: size.height * .2,
          alignment: Alignment.bottomCenter,
          color: AppColors.whitePrimary,
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Perfil',
            style: AppTextStyles.titleListTile.copyWith(fontSize: 24),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: size.height * .01),
          Center(
            child: Container(
              width: size.width,
              height: size.height * .2,
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(widget.user.photoURL ?? ''),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * .02),
                  Text(
                    widget.user.name,
                    style: AppTextStyles.titleListTile
                        .copyWith(color: AppColors.grey, fontSize: 19),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: size.width,
            height: size.height * .45,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.whitePrimary,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(height: size.height * .01),
                Expanded(
                  flex: 1,
                  child: TextButton(
                    style: TextButton.styleFrom(),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(width: size.width * .04),
                        Icon(
                          Icons.settings,
                          color: AppColors.grey,
                          size: 30,
                        ),
                        SizedBox(width: size.width * .03),
                        Text('Configuraçoes',
                            style: AppTextStyles.normalTextSecoundary),
                      ],
                    ),
                  ),
                ),
                Divider(),
                Expanded(
                  flex: 1,
                  child: TextButton(
                    style: TextButton.styleFrom(),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(width: size.width * .04),
                        Icon(
                          CupertinoIcons.info,
                          color: AppColors.grey,
                          size: 30,
                        ),
                        SizedBox(width: size.width * .03),
                        Text('Informações',
                            style: AppTextStyles.normalTextSecoundary),
                      ],
                    ),
                  ),
                ),
                Divider(),
                Expanded(
                  flex: 1,
                  child: TextButton(
                    style: TextButton.styleFrom(),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(width: size.width * .04),
                        Icon(
                          Icons.edit_outlined,
                          color: AppColors.grey,
                          size: 30,
                        ),
                        SizedBox(width: size.width * .03),
                        Text('Editar Informaçoes',
                            style: AppTextStyles.normalTextSecoundary),
                      ],
                    ),
                  ),
                ),
                Divider(),
                Expanded(
                  flex: 1,
                  child: TextButton(
                    style: TextButton.styleFrom(),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(width: size.width * .04),
                        Icon(
                          Icons.help_outline_outlined,
                          color: AppColors.grey,
                          size: 30,
                        ),
                        SizedBox(width: size.width * .03),
                        Text('Precisa de ajuda?',
                            style: AppTextStyles.normalTextSecoundary),
                      ],
                    ),
                  ),
                ),
                Divider(),
                Expanded(
                  flex: 1,
                  child: TextButton(
                    style: TextButton.styleFrom(),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(width: size.width * .04),
                        Icon(
                          Icons.privacy_tip_outlined,
                          color: AppColors.grey,
                          size: 30,
                        ),
                        SizedBox(width: size.width * .03),
                        Text('Segurança',
                            style: AppTextStyles.normalTextSecoundary),
                      ],
                    ),
                  ),
                ),
                Divider(),
                Expanded(
                  flex: 1,
                  child: TextButton(
                    style: TextButton.styleFrom(),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(width: size.width * .04),
                        Icon(
                          Icons.exit_to_app_sharp,
                          color: AppColors.grey,
                          size: 30,
                        ),
                        SizedBox(width: size.width * .03),
                        Text('Sair', style: AppTextStyles.normalTextSecoundary),
                      ],
                    ),
                  ),
                ),
                Container(height: size.height * .01),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
