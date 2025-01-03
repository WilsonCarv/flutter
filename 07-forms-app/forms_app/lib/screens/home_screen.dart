import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        ListTile(
          title: const Text('Cubits'),
          subtitle: const Text('State management'),
          trailing: const Icon(Icons.chevron_right),
          onTap: () => {
            context.push('/cubit')
          },
        ),
        ListTile(
          title: const Text('Blocks'),
          subtitle: const Text('State management'),
          trailing: const Icon(Icons.chevron_right),
          onTap: () => {
            context.push('/block')
          },
        ),
        ListTile(
          title: const Text('Register'),
          subtitle: const Text('Register form'),
          trailing: const Icon(Icons.chevron_right),
          onTap: () => {
            context.push('/register')
          }
        )
      ]),
    );
  }
}
