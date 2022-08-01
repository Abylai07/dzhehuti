import 'package:flutter/material.dart';

import '../../../constants/app_styles.dart';

class NumberOfInterviewWidget extends StatelessWidget {
  final String title;
  final String quota;
  final String value;
  final String left;
  final Color textColor;
  const NumberOfInterviewWidget({
    Key? key,
    required this.title,
    required this.quota,
    required this.value,
    required this.left,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(title,
                  style: AppStyles.s16w700.copyWith(letterSpacing: 0)),
            ),
          ),
          const Divider(thickness: 1),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: IntrinsicHeight(
              child: Row(
                children: [
                  Expanded(
                    child: Text(quota,
                        textAlign: TextAlign.center,
                        style: AppStyles.s18w400.copyWith(color: textColor)),
                  ),
                  const VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    width: 1,
                  ),
                  Expanded(
                    child: Text(value,
                        textAlign: TextAlign.center,
                        style: AppStyles.s18w400.copyWith(color: textColor)),
                  ),
                  const VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    width: 1,
                  ),
                  Expanded(
                    child: Text(left,
                        textAlign: TextAlign.center,
                        style: AppStyles.s18w400.copyWith(color: textColor)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
