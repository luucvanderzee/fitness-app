import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/top_bar.dart';
import '../widgets/drawer_menu.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopBar(title: 'Home screen'),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/exercises'),
          child: const Text('Go to exercises'),
        ),
      ),
      drawer: const DrawerMenu(),
    );
  }
}
