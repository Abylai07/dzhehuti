import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_styles.dart';
import '../../generated/l10n.dart';

class PollTestScreen extends StatefulWidget {
  const PollTestScreen({Key? key}) : super(key: key);

  @override
  State<PollTestScreen> createState() => _PollTestScreenState();
}

class _PollTestScreenState extends State<PollTestScreen> {

  bool isChecked = false;

  List<String> questions = [
    ' Спорт, релакс или развлечение?',
    ' Спорт, релакс или развлечение?',
    ' Спорт, релакс или развлечение?',
  ];

  List<String> answers = [
      'Спорт',
      'Релакс',
      'Развлечение',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBgColor,
      appBar: AppBar(
        elevation: 5,
        shadowColor: AppColors.appBarShadowColor,
        backgroundColor: Colors.white,
        title: Text('Опрос', style: AppStyles.s22w700),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(S.of(context).satisfactionWithMobileCommunication,
                        style: AppStyles.s16w700.copyWith(letterSpacing: 0),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('20 вопросов', style: AppStyles.s12w500,),
                        Text('Время 15 мин', style: AppStyles.s12w500,),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width - 40,
                      animation: true,
                      lineHeight: 8.0,
                      percent: 0.8,
                      barRadius: const Radius.circular(10),
                      //center: Text("90.0%"),
                      progressColor: AppColors.dzhehutiBodyNameColor,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Text(questions[0]),
                    Row(
                      children: [
                        Checkbox(
                            value: isChecked,
                            onChanged: (bool? value){
                              setState(() {
                                isChecked = value!;
                              });
                            },
                        ),
                         Text(answers[0]),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: isChecked,
                            onChanged: (bool? value){
                              setState(() {
                                isChecked = value!;
                              });
                            },
                        ),
                         Text(answers[1]),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: isChecked,
                            onChanged: (bool? value){
                              setState(() {
                                isChecked = value!;
                              });
                            },
                        ),
                         Text(answers[2]),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
