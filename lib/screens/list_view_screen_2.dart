import 'package:fl_advanced/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ListViewScreen2 extends StatelessWidget {
  const ListViewScreen2({Key? key}) : super(key: key);
  final heroes = const [
    'Superman',
    'Flash',
    'Wonder woman',
    'Dead Pool',
    'Aquaman'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView screen 2'),
      ),
      body: ListView(
        children: heroes
            .map((hero) => ListTile(
                  title: Text(hero),
                ))
            .toList(),
      ),
      drawer: CustomDrawer(),
    );
  }
}
