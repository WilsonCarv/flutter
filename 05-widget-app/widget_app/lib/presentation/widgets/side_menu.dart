import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_app/config/menu/menu_items.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 1;
  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;
    return NavigationDrawer(
        selectedIndex: navDrawerIndex,
        onDestinationSelected: (value) {
          setState(() {
            navDrawerIndex = value;
          });
          final menuItem = menuItems[value];
          context.push(menuItem.route);
        },
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(28, hasNotch ? 10 : 20, 16, 10),
            child: const Text('Main'),
          ),
          ...menuItems.sublist(0, 3).map((item) => NavigationDrawerDestination(
                icon: Icon(item.icon),
                label: Text(item.title),
              )),
          const Padding(
              padding: EdgeInsets.fromLTRB(28, 16, 16, 10), child: Divider()),
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 10, 16, 10),
            child: Text('Other options'),
          ),
          ...menuItems.sublist(3).map((item) => NavigationDrawerDestination(
                icon: Icon(item.icon),
                label: Text(item.title),
              )),
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 16, 16, 10),
            child: Divider(),
          ),
        ]);
  }
}
