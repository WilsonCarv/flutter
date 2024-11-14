import 'package:go_router/go_router.dart';

import '../../screens/screens.dart';



final appRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: '/cubit',
    builder: (context, state) => const CubitScreen(),
  ),
  GoRoute(
    path: '/block',
    builder: (context, state) => const BlockScreen(),
  ),
  GoRoute(
    path: '/register',
    builder: (context, state) => const RegisterScreen(),
  ),
]);
