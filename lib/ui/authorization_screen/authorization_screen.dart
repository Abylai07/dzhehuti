import 'package:dzhehuti_project/constants/app_colors.dart';
import 'package:dzhehuti_project/constants/app_styles.dart';
import 'package:dzhehuti_project/generated/l10n.dart';
import 'package:dzhehuti_project/ui/authorization_screen/widgets/button_widget.dart';
import 'package:dzhehuti_project/ui/authorization_screen/widgets/login_input_widget.dart';
import 'package:dzhehuti_project/ui/authorization_screen/widgets/password_input_widget.dart';
import 'package:flutter/material.dart';

class AuthorizationScreen extends StatefulWidget {
  const AuthorizationScreen({Key? key}) : super(key: key);

  @override
  State<AuthorizationScreen> createState() => _AuthorizationScreenState();
}

class _AuthorizationScreenState extends State<AuthorizationScreen> {
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    loginController.dispose();
    passwordController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.authorizationBGColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.authorizationAppBarBGColor,
        title: const Text(
          'DZHEHUTI',
          style: AppStyles.s16w700,
        ),
        titleTextStyle: AppStyles.s16w700,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('dzhehuti'.toUpperCase(), style: AppStyles.s32w700),
              Column(
                children: [
                  LoginInputWidget(
                    loginController: loginController,
                  ),
                  PasswordInputWidget(passwordController: passwordController),
                ],
              ),
              Column(
                children: [
                  ButtonWidget(
                    loginController: loginController,
                    passwordController: passwordController,
                    context: context,
                    formKey: _formKey,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                   Text(S.of(context).forgotYourPassword, style: AppStyles.s14w400),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
