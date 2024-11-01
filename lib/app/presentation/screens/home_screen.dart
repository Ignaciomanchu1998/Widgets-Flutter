import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Imports.
import 'package:widgets_flutter/config/config.dart';
import 'package:widgets_flutter/app/presentation/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Widgets by Flutter')),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: MenuItemRoute.itemsMenu.length,
        itemBuilder: (_, index) {
          final item = MenuItemRoute.itemsMenu[index];
          return ListTile(
            leading: Icon(item.icon),
            title: TextCustomWidget(
              text: item.title,
            ),
            subtitle: TextCustomWidget(
              text: item.subtitle,
              fontSize: 15,
              fontWeight: FontWeight.w300,
            ),
            trailing: const Icon(Icons.arrow_right_alt_outlined),
            onTap: () => context.pushNamed(item.route),
          );
        },
      ),
    );
  }
}
