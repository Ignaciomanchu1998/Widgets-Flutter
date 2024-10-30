import 'package:flutter/material.dart';

class MenuItemRoute {
  final String title;
  final String subtitle;
  final IconData icon;
  final String route;

  MenuItemRoute({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.route,
  });

  static List<MenuItemRoute> itemsMenu = [
    MenuItemRoute(
      title: 'Botones',
      subtitle: 'Agregando los botones que se usa en Flutter',
      icon: Icons.touch_app,
      route: '/buttons',
    ),
    MenuItemRoute(
      title: 'Tarjetas',
      subtitle: 'Agregando las tarjetas que se usa en Flutter',
      icon: Icons.card_giftcard,
      route: '/settings',
    ),
    MenuItemRoute(
      title: 'Animaciones',
      subtitle: 'Agregando las animaciones que se usa en Flutter',
      icon: Icons.play_arrow,
      route: '/settings',
    ),
    MenuItemRoute(
      title: 'Contenedores',
      subtitle: 'Agregando los contenedores que se usa en Flutter',
      icon: Icons.layers,
      route: '/settings',
    )
  ];
}
