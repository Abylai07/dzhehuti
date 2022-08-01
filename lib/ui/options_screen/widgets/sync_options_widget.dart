import 'package:dzhehuti_project/generated/l10n.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_styles.dart';

class SyncOptionsWidget extends StatelessWidget {
  const SyncOptionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.optionsContainerBorderColor,
        ),
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).syncOptions,
              style: AppStyles.s16w700.copyWith(letterSpacing: 0),
            ),
             SyncOptionsText(
              title: S.of(context).totalQuestionnaires,
              number: '46',
            ),
            const Divider(
              height: 5,
              thickness: 1,
            ),
             SyncOptionsText(
              title:  S.of(context).synchronized,
              number: '24',
            ),
            const Divider(
              height: 5,
              thickness: 1,
            ),
             SyncOptionsText(
              title:  S.of(context).toBeSynchronized,
              number: '22',
            ),
            const Divider(
              height: 5,
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}

class SyncOptionsText extends StatelessWidget {
  const SyncOptionsText({Key? key, required this.title, required this.number})
      : super(key: key);
  final String title;
  final String number;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: AppStyles.s14w500,
            ),
          ),
          Text(
            number,
            style: AppStyles.s14w500,
          )
        ],
      ),
    );
  }
}
