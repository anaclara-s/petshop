import 'package:flutter/material.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'CRIAR CONTA',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
