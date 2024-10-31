// GoRouter configuration
import 'package:go_router/go_router.dart';
import 'package:widgets_flutter/app/presentation/presentation.dart';

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
    GoRoute(
      path: '/code-screen-shared',
      name: CodeScreenShared.routeName,
      builder: (context, state) {
        final args = state.extra as Map<String, dynamic>;

        return CodeScreenShared(
          screenName: args['screenName'],
          code: args['code'],
        );
      },
    ),
  ],
);
