import 'package:flutter/material.dart';

import '../../config/config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets by Flutter'),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: MenuItemRoute.itemsMenu.length,
        itemBuilder: (_, index) {
          final item = MenuItemRoute.itemsMenu[index];
          return ListTile(
            leading: Icon(item.icon),
            title: Text(
              item.title,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            trailing: const Icon(Icons.arrow_right_alt_outlined),
            onTap: () {},
          );
        },
      ),
    );
  }
}
