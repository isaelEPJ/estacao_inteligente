import 'package:estacao_inteligente/module/signIn/signIn_controller.dart';
import 'package:estacao_inteligente/module/signUp/signUp_page.dart';
import 'package:estacao_inteligente/shared/themes/app_colors.dart';
import 'package:estacao_inteligente/shared/themes/app_images.dart';
import 'package:estacao_inteligente/shared/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final controller = SignInController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.whitePrimary,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 24),
              width: _size.width,
              height: _size.height * .35,
              child: Image.asset(
                AppImages.trem,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: _size.height * .02),
            Text(
              'Fazer Login',
              style: AppTextStyles.titleHome
                  .copyWith(color: Colors.black, fontSize: 24),
            ),
            SizedBox(height: _size.height * .02),
            Container(
              width: _size.width,
              height: _size.height * .08,
              padding: EdgeInsets.symmetric(horizontal: 15),
              margin: EdgeInsets.symmetric(vertical: 10),
              child: TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  value!.isEmpty ? 'Campo obrigatório' : null;
                  value.contains('@')
                      ? null
                      : 'Preencha seu email corretamente';
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
              height: _size.height * .08,
              padding: EdgeInsets.symmetric(horizontal: 15),
              margin: EdgeInsets.symmetric(vertical: 5),
              child: TextFormField(
                controller: senhaController,
                obscureText: true,
                keyboardType: TextInputType.text,
                validator: (value) {
                  value!.isEmpty ? 'Campo obrigatório' : null;
                  value.length < 3 ? 'Minimo de 3 caracteres' : null;
                },
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  label: Text('Senha'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(height: _size.height * .01),
            Container(
              width: _size.width,
              height: _size.height * .07,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextButton(
                style: TextButton.styleFrom(),
                child: Text(
                  'Esqueceu sua senha?',
                  style: AppTextStyles.normalTextBlack.copyWith(
                      color: Colors.grey, decoration: TextDecoration.underline),
                ),
                onPressed: () {},
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
                  primary: AppColors.primary,
                ),
                child: Text(
                  'Acessar conta',
                  style:
                      AppTextStyles.normalTextBackground.copyWith(fontSize: 17),
                ),
                onPressed: () => controller.signWithEmailAndPassword(
                    context, emailController.text, senhaController.text),
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
                      'Não tem uma conta?',
                      style: AppTextStyles.normalTextBlack,
                    ),
                    onPressed: () {},
                  ),
                  TextButton(
                    style: TextButton.styleFrom(),
                    child: Text('Criar conta',
                        textAlign: TextAlign.left,
                        style: AppTextStyles.normalTextPrimary),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpPage()));
                    },
                  ),
                  SizedBox(height: _size.height * .02),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
