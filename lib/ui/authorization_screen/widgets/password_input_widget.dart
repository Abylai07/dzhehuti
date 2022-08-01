import 'package:dzhehuti_project/constants/app_styles.dart';
import 'package:dzhehuti_project/generated/l10n.dart';
import 'package:flutter/material.dart';

class PasswordInputWidget extends StatelessWidget {
  const PasswordInputWidget({Key? key, required this.passwordController})
      : super(key: key);
  final TextEditingController passwordController;



  final borderDecoration = const UnderlineInputBorder(
    borderSide: BorderSide(
      color: Colors.white,
      width: 1,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: TextFormField(
        obscureText: true,
        style: const TextStyle(color: Colors.white),
        controller: passwordController,
        decoration:  InputDecoration(
          enabledBorder: borderDecoration,
          focusedBorder: borderDecoration,
          hintText: S.of(context).password,
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
        onTap: () {},
      ),
    );
  }
}
