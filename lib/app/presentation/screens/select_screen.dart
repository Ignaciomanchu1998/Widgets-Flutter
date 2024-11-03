import 'package:flutter/material.dart';

class SelectScreen extends StatelessWidget {
  const SelectScreen({super.key});

  static const routeName = '/select';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('SelectScreen'),
      ),
    );
  }
}
