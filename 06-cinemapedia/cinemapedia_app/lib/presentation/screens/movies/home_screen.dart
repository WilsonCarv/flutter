import 'package:flutter/material.dart';
import 'package:cinemapedia_app/presentation/widgets/widgets.dart';

import '../../views/movies/favorites_view.dart';
import '../../views/movies/home_view.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home_screen';
  final int pageIndex;
  const HomeScreen({super.key, required this.pageIndex});

  final viewRoutes = const <Widget>[HomeView(), SizedBox(), FavoritesView()];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: viewRoutes,
      ),
      bottomNavigationBar:  CustomBottomNavigation(currentIndex: pageIndex),
    );
  }
}
