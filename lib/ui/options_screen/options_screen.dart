import 'package:dzhehuti_project/ui/options_screen/widgets/button_option_widget.dart';
import 'package:dzhehuti_project/ui/options_screen/widgets/poll_options_widget.dart';
import 'package:dzhehuti_project/ui/options_screen/widgets/sync_options_widget.dart';

import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_styles.dart';
import '../../generated/l10n.dart';

class OptionsScreen extends StatelessWidget {
  const OptionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBgColor,
      appBar: AppBar(
        elevation: 5,
        shadowColor: AppColors.appBarShadowColor,
        backgroundColor: Colors.white,
        title:  Text(
          S.of(context).options ,
          style: AppStyles.s22w700,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).satisfactionWithMobileCommunication,
                style: AppStyles.s16w700.copyWith(letterSpacing: 0),
              ),
              const PollOptionsWidget(),
              const SyncOptionsWidget(),
              const SizedBox(
                height: 40,
              ),
              const ButtonOptionWidget()
            ],
          ),
        ),
      ),
    );
  }
}
