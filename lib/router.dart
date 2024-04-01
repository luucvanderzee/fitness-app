import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screens/home.dart';
import 'screens/exercises.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Home();
      },
    ),
    GoRoute(
      path: '/exercises',
      builder: (BuildContext context, GoRouterState state) {
        return const Exercises();
      },
    )
  ],
);
