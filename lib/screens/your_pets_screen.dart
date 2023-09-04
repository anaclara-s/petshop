import 'package:flutter/material.dart';

class YourPetsScreen extends StatelessWidget {
  const YourPetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Row(),
          ),
        ],
      ),
    );
  }
}
