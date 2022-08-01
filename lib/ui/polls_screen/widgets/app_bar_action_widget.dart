import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarActionWidget extends StatelessWidget {
  const AppBarActionWidget({Key? key, required this.icon}) : super(key: key);
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(57, 74, 87, 0.1),
            blurRadius: 4,
          ),
        ],
      ),
      child: IconButton(
        splashRadius: 1,
        onPressed: () {},
        icon: SvgPicture.asset(icon),
      ),
    );
  }
}
