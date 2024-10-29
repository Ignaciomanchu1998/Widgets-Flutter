import 'package:flutter/material.dart';
import 'package:widgets_flutter/app/screens/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widgets by Flutter',
      home: HomeScreen(),
    );
  }
}
