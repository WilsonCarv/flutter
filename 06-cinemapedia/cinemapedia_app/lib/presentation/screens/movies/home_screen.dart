import 'package:cinemapedia_app/presentation/views/views.dart';
import 'package:cinemapedia_app/presentation/widgets/shared/custom_bottom_navigationbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Home'),),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}