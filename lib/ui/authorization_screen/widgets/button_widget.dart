import 'package:dzhehuti_project/constants/app_colors.dart';
import 'package:dzhehuti_project/constants/app_styles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {Key? key,
      required this.loginController,
      required this.context,
      required this.formKey,
      required this.passwordController})
      : super(key: key);

  final TextEditingController loginController;
  final BuildContext context;
  final GlobalKey<FormState> formKey;
  final TextEditingController passwordController;

  void onPressedButton(String login, String password) {
    // if (login == 'qwerty' && password == '123456ab') {
    //   Navigator.of(context).pushReplacementNamed('/auth_screen/navigation_bar');
    // } else {
    //   if (kDebugMode) {
    //     print("incorrect");
    //   }
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 0,
              primary: AppColors.authorizationButtonColor,
            ),
            onPressed: () {
              Navigator.of(context)
                  .pushReplacementNamed('/auth_screen/navigation_bar');
              // if (formKey.currentState!.validate()) {
              //   onPressedButton(loginController.text, passwordController.text);
              // }
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                'Войти',
                style: AppStyles.s16w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
