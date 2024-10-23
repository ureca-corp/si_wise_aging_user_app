import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:si_wise_aging_user_app/apps/global/router/router.dart';

import 'apps/global/theme/color_cheme.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Wise Aging User App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: colorPrimary50),
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}
