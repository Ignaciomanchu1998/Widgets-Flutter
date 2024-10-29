import 'package:flutter/material.dart';

import 'screens/screens.dart';
import '../config/config.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widgets by Flutter',
      theme: AppTheme(selectedIndex: 0).getLightTheme(),
      home: const HomeScreen(),
    );
  }
}
