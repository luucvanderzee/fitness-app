import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/top_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopBar(title: "Home screen"),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/routine'),
          child: const Text("Go to routine"),
        ),
      ),
    );
  }
}
