import 'package:estacao_inteligente/module/signIn/signIn_page.dart';
import 'package:estacao_inteligente/shared/themes/app_colors.dart';
import 'package:estacao_inteligente/shared/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final senhaController = TextEditingController();
    final imageController = TextEditingController();

    final _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.whitePrimary,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: _size.height * .1),
            Container(
              width: _size.width,
              height: _size.height * .08,
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: Color(0xFF3B5999),
                ),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  primary: AppColors.whitePrimary,
                  onPrimary: Color(0xFF3B5999),
                ),
                child: Text(
                  'Conectar-se com Facebook',
                  // style:
                  //     AppTextStyles.normalTextBackground.copyWith(fontSize: 17),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(height: _size.height * .02),
            Container(
              width: _size.width,
              height: _size.height * .08,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Color(0xFFE53935),
                  )),
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  primary: AppColors.whitePrimary,
                  onPrimary: Color(0xFFE53935),
                ),
                child: Text(
                  'Conectar-se com Gmail',
                  // style:
                  //     AppTextStyles.normalTextBackground.copyWith(fontSize: 17),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(height: _size.height * .03),
            Text(
              'ou',
              style: AppTextStyles.normalTextBlack
                  .copyWith(color: Colors.black, fontSize: 20),
            ),
            Text(
              'Criar conta',
              style: AppTextStyles.titleHome.copyWith(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: _size.height * .02),
            Container(
              width: _size.width,
              height: _size.height * .07,
              padding: EdgeInsets.symmetric(horizontal: 15),
              margin: EdgeInsets.symmetric(vertical: 10),
              child: TextFormField(
                controller: nameController,
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Campo obrigatório';
                  }
                  if (value.length < 3) {
                    return 'Minimo de 3 caracteres';
                  }
                  return null;
                },
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hoverColor: AppColors.primary,
                  label: Text('Nome Completo'),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primary),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Container(
              width: _size.width,
              height: _size.height * .07,
              padding: EdgeInsets.symmetric(horizontal: 15),
              margin: EdgeInsets.symmetric(vertical: 8),
              child: TextFormField(
                controller: emailController,
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Campo obrigatório';
                  }
                  if (value.length < 3) {
                    return 'Minimo de 3 caracteres';
                  }
                  return null;
                },
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hoverColor: AppColors.primary,
                  label: Text('Email'),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primary),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Container(
              width: _size.width,
              height: _size.height * .07,
              padding: EdgeInsets.symmetric(horizontal: 15),
              margin: EdgeInsets.symmetric(vertical: 8),
              child: TextFormField(
                controller: senhaController,
                obscureText: true,
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Campo obrigatório';
                  }
                  if (value.length < 3) {
                    return 'Minimo de 3 caracteres';
                  }
                  return null;
                },
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  label: Text('Senha'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Container(
              width: _size.width,
              height: _size.height * .07,
              padding: EdgeInsets.symmetric(horizontal: 15),
              margin: EdgeInsets.symmetric(vertical: 8),
              child: TextFormField(
                controller: imageController,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  label: Text('Sua Imagem'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(height: _size.height * .01),
            Container(
              width: _size.width,
              height: _size.height * .08,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  primary: Colors.blue,
                ),
                child: Text(
                  'Criar conta',
                  style:
                      AppTextStyles.normalTextBackground.copyWith(fontSize: 17),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(height: _size.height * .02),
            Container(
              height: _size.height * .07,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(),
                    child: Text(
                      'Já possui uma conta?',
                      style: AppTextStyles.normalTextBlack,
                    ),
                    onPressed: () {},
                  ),
                  TextButton(
                    style: TextButton.styleFrom(),
                    child: Text(
                      'Entrar',
                      textAlign: TextAlign.left,
                      style: AppTextStyles.normalTextPrimary
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInPage()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
