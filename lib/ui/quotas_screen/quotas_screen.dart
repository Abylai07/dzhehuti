import 'package:dzhehuti_project/ui/quotas_screen/widgets/number_of_interview_widget.dart';
import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_styles.dart';
import '../../generated/l10n.dart';

class QuotasScreen extends StatelessWidget {
  const QuotasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBgColor,
      appBar: AppBar(
        elevation: 5,
        shadowColor: AppColors.appBarShadowColor,
        backgroundColor: Colors.white,
        title: Text(S.of(context).quotas, style: AppStyles.s22w700),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(S.of(context).satisfactionWithMobileCommunication,
                      style: AppStyles.s16w700.copyWith(letterSpacing: 0)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5),
                        topLeft: Radius.circular(5),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(S.of(context).quotas,
                              textAlign: TextAlign.center,
                              style: AppStyles.s12w500),
                        ),
                        Expanded(
                          child: Text(S.of(context).meaning,
                              textAlign: TextAlign.center,
                              style: AppStyles.s12w500),
                        ),
                        Expanded(
                          child: Text(S.of(context).left,
                              textAlign: TextAlign.center,
                              style: AppStyles.s12w500),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    NumberOfInterviewWidget(
                      title: S.of(context).fullInterview,
                      quota: '6000',
                      value: '3950',
                      left: '2000',
                      textColor: AppColors.countOfInterviewTextColor,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const NumberOfInterviewWidget(
                        title: 'Beeline',
                        quota: '1500',
                        value: '1500',
                        left: '2000',
                        textColor: Colors.green),
                    const SizedBox(
                      height: 10,
                    ),
                    const NumberOfInterviewWidget(
                        title: 'Ucell',
                        quota: '1500',
                        value: '1502',
                        left: '-2',
                        textColor: Colors.red),
                    const SizedBox(
                      height: 10,
                    ),
                    const NumberOfInterviewWidget(
                      title: 'MbiUZ',
                      quota: '1500',
                      value: '1501',
                      left: '-1',
                      textColor: Colors.red,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    NumberOfInterviewWidget(
                      title: S.of(context).men,
                      quota: '',
                      value: '1 814',
                      left: '',
                      textColor: Colors.black,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    NumberOfInterviewWidget(
                      title: S.of(context).women,
                      quota: '',
                      value: '2 146',
                      left: '',
                      textColor: Colors.black,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
