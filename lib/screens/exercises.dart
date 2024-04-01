import 'package:flutter/material.dart';
import '../widgets/top_bar.dart';
import '../widgets/drawer_menu.dart';

class Exercises extends StatelessWidget {
  const Exercises({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopBar(title: 'Exercises'),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: const [
          Text('Item 1', style: TextStyle(fontSize: 20)),
          Text('Item 2', style: TextStyle(fontSize: 20)),
        ],
      ),
      drawer: const DrawerMenu(),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text(
          'Add exercise',
          style: TextStyle(fontSize: 20),
        ),
        icon: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
