import 'package:fl_advanced/router/app_routes.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({Key? key}) : super(key: key);
  final options = AppRoutes.menuOptions;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
        child: ListView.builder(
          itemCount: options.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(options[index].name),
              leading: Icon(options[index].icon),
              onTap: () => Navigator.pushNamed(context, options[index].route),
            );
          },
        ),
      ),
    );
  }
}
