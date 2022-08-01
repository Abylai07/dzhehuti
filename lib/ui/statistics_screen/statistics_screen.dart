import 'package:flutter/material.dart';

import '../../constants/app_assets.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_styles.dart';
import '../../generated/l10n.dart';
import '../polls_screen/widgets/app_bar_action_widget.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        shadowColor: AppColors.appBarShadowColor,
        title:  Text(
          S.of(context).statistics,
          style: AppStyles.s22w700,
        ),
        centerTitle: false,
        actions: [
          AppBarActionWidget(icon: AppAssets.svg.actionSearchAppBar),
          AppBarActionWidget(icon: AppAssets.svg.actionFilterAppBar),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Данный экран еще разрабатывается',
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
            Image(image: AssetImage(AppAssets.images.oopsImage)),
          ],
        ),
      ),
    );
  }
}
