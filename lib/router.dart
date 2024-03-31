import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screens/home.dart';
import 'screens/routine.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Home();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'routine',
          builder: (BuildContext context, GoRouterState state) {
            return const Routine();
          },
        ),
      ],
    ),
  ],
);
