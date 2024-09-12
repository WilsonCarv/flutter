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
    route: '/cards',
  ),
  MenuItem(
      title: 'Progress Indicators',
      subTitle: 'Progress Indicators in Flutter',
      route: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'Snackbars and Dialogs',
      subTitle: 'Snackbars and Dialogs in Flutter',
      route: '/snackbars',
      icon: Icons.info_outline),
  MenuItem(
      title: 'Animated container',
      subTitle: 'Animated Stateful widget',
      route: '/animated',
      icon: Icons.check_box_outline_blank_rounded),
  MenuItem(
      title: 'UI Controls + Tiles',
      subTitle: 'UI Controls + Tiles',
      route: '/ui-controls',
      icon: Icons.car_rental_outlined),
  MenuItem(
      title: 'Onboarding',
      subTitle: 'Onboarding Screen',
      route: '/tutorial',
      icon: Icons.accessible_rounded),
  MenuItem(
      title: 'InfiniteScroll y Pull',
      subTitle: 'InfiniteScroll and pull to refresh',
      route: '/infinite',
      icon: Icons.list_alt_rounded),
  MenuItem(
      title: 'Riverpod Counter',
      subTitle: 'Counter screen - riverpod',
      icon: Icons.abc_outlined,
      route: '/counter')
];
