import 'package:flutter/material.dart';

import '../shared/constants/constants.dart';

class YourPetsScreen extends StatelessWidget {
  const YourPetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              margin: const EdgeInsets.all(kDefaultPaddin),
              child: Column(
                children: [
                  TextFormField(
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(labelText: 'NOME DO PET:'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
