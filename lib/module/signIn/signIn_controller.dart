import 'package:estacao_inteligente/data/user_data.dart';
import 'package:estacao_inteligente/shared/auth/auth_controller.dart';
import 'package:estacao_inteligente/shared/dialogs/help_dialog.dart';
import 'package:estacao_inteligente/shared/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignInController {
  final authController = AuthController();
  signWithEmailAndPassword(
      BuildContext context, String email, String password) {
    try {
      for (var usr in UsersData) {
        if (usr.email == email) {
          UserModel user = usr;
          authController.setUser(context, user);
        } else {
          showDialog(context: context, builder: (context) => HelpDialog());
          return authController.setUser(context, null);
        }
      }
      // authController.setUser(context, UserModel(name: 'name', email: 'email'));
    } catch (error) {
      showDialog(context: context, builder: (context) => HelpDialog());
      authController.setUser(context, null);
    }
  }

  Future<void> googleSignIn(BuildContext context) async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    try {
      final response = await _googleSignIn.signIn();
      final user = UserModel(
        name: response!.displayName!,
        email: response.email,
        photoURL: response.photoUrl,
      );
      authController.setUser(context, user);
      print(response);
    } catch (error) {
      authController.setUser(context, null);
      print(error);
    }
  }
}
