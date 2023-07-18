import 'package:flutter/material.dart';

import 'utils/routes_name.dart';

class SecondScreen extends StatelessWidget {
  dynamic data;
  SecondScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text("Name: ${data['name']}"),
          Text("Age: ${data['age']}"),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 24),
              ),
              onPressed: () {
                Navigator.pushNamed(context, RouteName.thirdScreen);
              },
              child: const Text("Next page"),
            ),
          ),
        ],
      ),
    );
  }
}
