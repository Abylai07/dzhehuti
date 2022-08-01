import 'package:dzhehuti_project/generated/l10n.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_styles.dart';

class LoginInputWidget extends StatelessWidget {
  const LoginInputWidget({Key? key, required this.loginController})
      : super(key: key);
  final TextEditingController loginController;

  final borderDecoration = const UnderlineInputBorder(
    borderSide: BorderSide(
      color: Colors.white,
      width: 1,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      controller: loginController,
      decoration: InputDecoration(
        enabledBorder: borderDecoration,
        focusedBorder: borderDecoration,
        hintText: S.of(context).login,
        hintStyle: AppStyles.s12w400,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '';
        }
        if (value.length < 3) {
          return '';
        }
        if (value.length > 8) {
          return '';
        }

        return null;
      },
    );
  }
}
