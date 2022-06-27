import 'package:fl_advanced/models/menu_options.dart';
import 'package:fl_advanced/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'listview',
        name: 'Listview',
        screen: const ListViewScreen(),
        icon: Icons.list_alt),
    MenuOption(
        route: 'listview2',
        name: 'Listview 2',
        screen: const ListViewScreen2(),
        icon: Icons.view_list_outlined),
    MenuOption(
        route: 'alert',
        name: 'Alert',
        screen: const AlertScreen(),
        icon: Icons.adb_outlined),
    MenuOption(
        route: 'animation',
        name: 'Animations',
        screen: const AnimationScreen(),
        icon: Icons.play_arrow),
    MenuOption(
        route: 'cards',
        name: 'Cards',
        screen: const CardScreen(),
        icon: Icons.image)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    );
  }
}
