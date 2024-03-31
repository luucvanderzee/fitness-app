import 'package:flutter/material.dart';
import '../widgets/top_bar.dart';

class Routine extends StatelessWidget {
  const Routine({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TopBar(title: "Routine"),
      body: Center(
        child: Text("Here you will be able to edit a routine"),
      ),
    );
  }
}
