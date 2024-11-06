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
      title: 'Inputs',
      subtitle: 'Agregando los inputs que se usa en Flutter',
      icon: Icons.input,
      route: '/input',
    ),
    MenuItemRoute(
      title: 'DropdownButton',
      subtitle: 'DropdownButton desplegable permite al usuario seleccionar un elemento',
      icon: Icons.touch_app,
      route: '/dropdown-button',
    ),
  ];
}
