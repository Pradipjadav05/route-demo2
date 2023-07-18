
import 'package:flutter/material.dart';
import 'package:routes_demo2/home.dart';
import 'package:routes_demo2/third_screen.dart';
import 'package:routes_demo2/utils/routes_name.dart';

import '../second_screen.dart';

class Routes {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case RouteName.secondScreen:
        return MaterialPageRoute(builder: (context) => SecondScreen(data: settings.arguments as Map,));
      case RouteName.thirdScreen:
        return MaterialPageRoute(builder: (context) => const ThirdScreen());
      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(
              child: Text("Page not found"),
            ),
          );
        });
    }
  }
}