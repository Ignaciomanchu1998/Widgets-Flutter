import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  static const String routeName = '/buttons';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('ButtonScreen'),
      ),
    );
  }
}
