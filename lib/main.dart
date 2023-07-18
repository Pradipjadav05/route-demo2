import 'package:flutter/material.dart';
import 'package:routes_demo2/utils/routes.dart';
import 'package:routes_demo2/utils/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Routs Demo",
      initialRoute: RouteName.homeScreen,
      onGenerateRoute: Routes.generateRoutes,
    );
  }
}
