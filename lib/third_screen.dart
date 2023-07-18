import 'package:flutter/material.dart';
import 'package:routes_demo2/utils/routes_name.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Third Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(fontSize: 24),
          ),
          onPressed: () {
            Navigator.pushNamed(context, RouteName.homeScreen);
          },
          child: const Text("Next page"),
        ),
      ),
    );
  }
}
