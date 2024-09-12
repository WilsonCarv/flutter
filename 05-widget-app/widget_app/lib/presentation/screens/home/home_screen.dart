import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_app/config/menu/menu_items.dart';
import 'package:widget_app/presentation/widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Flutter Widgets'),
      ),
      body: _HomeView(),
      drawer:  SideMenu(scaffoldKey: scaffoldKey)
    );
  }
}

class _HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: menuItems.length,
      itemBuilder: (context, index) {
        final menuItem = menuItems[index];
        return _CustomListItem(menuItem: menuItem);
      },
    );
  }
}

class _CustomListItem extends StatelessWidget {
  const _CustomListItem({
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
        title: Text(menuItem.title),
        subtitle: Text(menuItem.subTitle),
        leading: Icon(menuItem.icon, color: colors.primary),
        trailing: Icon(Icons.chevron_right, color: colors.primary),
        onTap: () {
          context.push(menuItem.route);
         // Navigator.pushNamed(context, menuItem.route);
        });
  }
}
