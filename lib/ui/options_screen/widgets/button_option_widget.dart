import 'package:dzhehuti_project/constants/app_styles.dart';
import 'package:dzhehuti_project/generated/l10n.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class ButtonOptionWidget extends StatelessWidget {
  const ButtonOptionWidget({Key? key}) : super(key: key);

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
            onPressed: () {},
            child:  Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                S.of(context).synchronize,
                style: AppStyles.s16w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
