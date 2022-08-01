import 'package:dzhehuti_project/constants/app_assets.dart';
import 'package:dzhehuti_project/generated/l10n.dart';
import 'package:dzhehuti_project/ui/options_screen/options_screen.dart';
import 'package:dzhehuti_project/ui/polls_screen/polls_screen.dart';
import 'package:dzhehuti_project/ui/quotas_screen/quotas_screen.dart';
import 'package:dzhehuti_project/ui/statistics_screen/statistics_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/app_colors.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  NavigationState createState() => NavigationState();
}

class NavigationState extends State<Navigation> {
  int _selectedPage = 0;

  void onSelectPage(int index) {
    setState(
      () {
        _selectedPage = index;
      },
    );
  }

  static final List<Widget> _widgetOptions = <Widget>[
    //
    const PollsScreen(),
    const StatisticsScreen(),
    const QuotasScreen(),
    const OptionsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedPage),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.selectedNavBarIconColor,
        unselectedItemColor: AppColors.unselectedNavBarIconColor,
        showUnselectedLabels: true,
        currentIndex: _selectedPage,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.svg.pollsNavIcon,
              color: _selectedPage == 0
                  ? AppColors.selectedNavBarIconColor
                  : AppColors.unselectedNavBarIconColor,
            ),
            label: S.of(context).polls,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.svg.statisticsNavIcon,
              color: _selectedPage == 1
                  ? AppColors.selectedNavBarIconColor
                  : AppColors.unselectedNavBarIconColor,
            ),
            label: S.of(context).statistics,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.svg.quotasNavIcon,
              color: _selectedPage == 2
                  ? AppColors.selectedNavBarIconColor
                  : AppColors.unselectedNavBarIconColor,
            ),
            label: S.of(context).quotas,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.svg.optionsNavIcon,
              color: _selectedPage == 3
                  ? AppColors.selectedNavBarIconColor
                  : AppColors.unselectedNavBarIconColor,
            ),
            label: S.of(context).options,
          ),
        ],
        onTap: onSelectPage,
      ),
    );
  }
}
