import 'package:flutter/material.dart';
import '../widgets/top_bar.dart';
import '../widgets/drawer_menu.dart';

class Exercises extends StatelessWidget {
  const Exercises({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TopBar(title: 'Exercises'),
      body: Center(
        child: Text('Here you will be able to manage exercises'),
      ),
      drawer: DrawerMenu(),
    );
  }
}
