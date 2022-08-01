import 'package:dzhehuti_project/constants/app_assets.dart';
import 'package:dzhehuti_project/constants/app_colors.dart';
import 'package:dzhehuti_project/constants/app_styles.dart';
import 'package:dzhehuti_project/ui/polls_screen/widgets/app_bar_action_widget.dart';
import 'package:dzhehuti_project/ui/polls_screen/widgets/polls_container_widget.dart';
import 'package:dzhehuti_project/ui/poll_test_screen/poll_test_screen.dart';
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class PollsScreen extends StatelessWidget {
  const PollsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        shadowColor: AppColors.appBarShadowColor,
        backgroundColor: Colors.white,
        title: Text(
          S.of(context).polls,
          style: AppStyles.s22w700,
        ),
        centerTitle: false,
        actions: [
          AppBarActionWidget(icon: AppAssets.svg.actionSearchAppBar),
          AppBarActionWidget(icon: AppAssets.svg.actionFilterAppBar),
        ],
      ),
      body: Column(

        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Image.asset(AppAssets.images.accImage),
              ),
              Expanded(
                flex: 3,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Иманкулова Айнагуль',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'MAMC Рисёрч',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(S.of(context).login, style: AppStyles.s12w500),
                          Text(
                            'mamc014',
                            style:
                                AppStyles.s16w500.copyWith(color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            color: Colors.white,
            thickness: 3,
            indent: 20,
            endIndent: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                FlatButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const PollTestScreen()));
                  },
                  child: const PollsContainerWidget(
                    pollTitle: 'Удовлетворенность абонетов мобильной связи',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                FlatButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const PollTestScreen()));
                  },
                  child: const PollsContainerWidget(
                    pollTitle: 'Тестирование продуктов и знание брендов молочной продукции',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
