import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'MyHome',
            style: TextStyle(
              color: Colors.red,
              fontSize: 20,
              decoration: TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }
}
