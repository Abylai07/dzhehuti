import 'package:dzhehuti_project/repo/api.dart';
import 'package:dzhehuti_project/repo/repo_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:provider/provider.dart';

class InitWidget extends StatelessWidget {
  const InitWidget({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      RepositoryProvider(
        create: (context) => Api(),
      ),
      Provider(
        create: (context) => RepoSettings(),
      ),
    ], child: child);
  }
}
