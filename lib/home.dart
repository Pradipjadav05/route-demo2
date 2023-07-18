import 'package:flutter/material.dart';
import 'package:routes_demo2/utils/routes_name.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, RouteName.secondScreen,
                arguments: {"name": "Pradip", "age": 21});
          },
          child: const Text(
            "Next Page",
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
