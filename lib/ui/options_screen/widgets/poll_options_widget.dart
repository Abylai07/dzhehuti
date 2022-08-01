import 'package:dzhehuti_project/constants/app_colors.dart';
import 'package:dzhehuti_project/constants/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

class PollOptionsWidget extends StatelessWidget {
  const PollOptionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
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
                S.of(context).pollOptions,
                style: AppStyles.s16w700.copyWith(letterSpacing: 0),
              ),
               PullOptionsText(
                title: S.of(context).geolocation,
              ),
              const Divider(
                height: 5,
                thickness: 1,
              ),
               PullOptionsText(
                title: S.of(context).audioRecording,
              ),
              const Divider(
                height: 5,
                thickness: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PullOptionsText extends StatefulWidget {
  const PullOptionsText({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<PullOptionsText> createState() => _PullOptionsTextState();
}

class _PullOptionsTextState extends State<PullOptionsText> {
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: Text(widget.title, style: AppStyles.s14w500),
          ),
          Transform.scale(
            scale: 0.8,
            child: CupertinoSwitch(
              value: isSwitched,
              onChanged: (value) {
                setState(
                  () {
                    isSwitched = value;
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
