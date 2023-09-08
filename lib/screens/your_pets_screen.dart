import 'package:flutter/material.dart';

import '../shared/models/appbar_customized.dart';
import 'add_your_pets_screen.dart';

class YourPetsScreen extends StatelessWidget {
  const YourPetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustomized(),
      body: Align(
        alignment: Alignment.center,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(50, 60),
          ),
          child: const SizedBox(
            width: 300,
            height: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.add,
                  size: 50,
                ),
                SizedBox(
                  height: 20,
                ),
                Text('ADICONAR NOVO PET'),
              ],
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddYourPetsScreen(),
              ),
            );
          },
        ),
      ),
    );
  }
}
