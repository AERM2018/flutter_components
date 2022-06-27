import 'package:fl_advanced/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);
  final fruits = const ['Apple', 'Watermelon', 'Pineapple', 'Kiwi', 'Pear'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Advanced flutter')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: ListView.separated(
            itemBuilder: (context, i) => ListTile(
                  title: Text(fruits[i]),
                  trailing: const Icon(Icons.emoji_objects_outlined),
                ),
            separatorBuilder: (context, i) => const Divider(),
            itemCount: fruits.length),
      ),
      drawer: CustomDrawer(),
    );
  }
}
