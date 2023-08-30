import 'package:flutter/material.dart';

import '../shared/widgets/cell_number.dart';
import '../shared/widgets/password.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _senhaController = TextEditingController();
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                'LOGIN',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 230, 94, 93),
                ),
              ),
              const Text(
                'BEM VINDO DE VOLTA',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 230, 94, 93),
                ),
              ),
              const SizedBox(
                child: CellNumberWidget(),
              ),
              SizedBox(
                child: PasswordWidget(controller: _senhaController),
              ),
              SizedBox(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(230, 70),
                  ),
                  child: const Text(
                    'LOGIN',
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
