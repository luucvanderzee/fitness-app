import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  bool _isLocation(BuildContext context, String route) {
    final router = GoRouter.of(context);
    final currentRoute = router.routeInformationProvider.value.uri;

    return route == currentRoute.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text('Drawer header'),
          ),
          ListTile(
            title: const Text('Home'),
            selected: _isLocation(context, '/'),
            onTap: () => context.go('/'),
          ),
          ListTile(
            title: const Text('Exercises'),
            selected: _isLocation(context, '/exercises'),
            onTap: () => context.go('/exercises'),
          )
        ],
      ),
    );
  }
}
