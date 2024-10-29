import 'package:flutter/material.dart';

import '../config/routes/app_route.dart';
import '../config/config.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Widgets by Flutter',
      theme: AppTheme(selectedIndex: 0).getLightTheme(),
      routerConfig: appRouter,
    );
  }
}
