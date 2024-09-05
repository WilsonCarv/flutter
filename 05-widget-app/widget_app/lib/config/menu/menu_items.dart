import 'package:flutter/material.dart' show IconData, Icons;

class MenuItem {
  final String title;
  final String subTitle;
  final IconData icon;
  final String route;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.icon,
      required this.route});
}

const List<MenuItem> menuItems = [
  MenuItem(
    title: 'Buttons',
    subTitle: 'Buttons in Flutter',
    icon: Icons.smart_button_outlined,
    route: '/buttons',
  ),
  MenuItem(
    title: 'Cards',
    subTitle: 'Cards in Flutter',
    icon: Icons.credit_card,
    route: '/card',
  ),
];