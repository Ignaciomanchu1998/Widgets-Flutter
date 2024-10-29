// GoRouter configuration
import 'package:go_router/go_router.dart';
import 'package:widgets_flutter/app/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.routeName,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      name: ButtonScreen.routeName,
      builder: (context, state) => const ButtonScreen(),
    ),
  ],
);
