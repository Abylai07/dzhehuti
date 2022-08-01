import 'package:dzhehuti_project/init_widget.dart';
import 'package:dzhehuti_project/repo/repo_settings.dart';
import 'package:dzhehuti_project/ui/authorization_screen/authorization_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'generated/l10n.dart';
import 'navigation/navigation.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final repoSettings = RepoSettings();
  await repoSettings.init();

  var defaultLocale = const Locale('ru', 'RU');
  final locale = await repoSettings.readLocale();

  if (locale == 'en') {
    defaultLocale = const Locale('en');
  }
  runApp(
    DzhehutiProject(
      locale: defaultLocale,
    ),
  );
}

class DzhehutiProject extends StatelessWidget {
  const DzhehutiProject({Key? key, required this.locale}) : super(key: key);
  final Locale locale;
  @override
  Widget build(BuildContext context) {
    return InitWidget(
      child: MaterialApp(
        theme: ThemeData(),
        debugShowCheckedModeBanner: false,
        routes: {
          '/authorization_screen': (context) => const AuthorizationScreen(),
          '/auth_screen/navigation_bar': (context) => const Navigation(),
        },
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        initialRoute: '/authorization_screen',
        locale: locale,
        supportedLocales: S.delegate.supportedLocales,
      ),
    );
  }
}
