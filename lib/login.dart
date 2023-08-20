import 'package:flutter/material.dart';
import 'config.dart';
import 'telaprincipal.dart';

class Login extends StatelessWidget {
  final TextEditingController _senhaController = TextEditingController();
  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 235, 228),
      //
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
              //
              const SizedBox(
                child: Celular(),
              ),
              //
              SizedBox(
                child: Senha(controller: _senhaController),
              ),
              SizedBox(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    minimumSize: const Size(230, 70),
                    backgroundColor: const Color.fromARGB(255, 230, 94, 93),
                  ),
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Color.fromARGB(255, 251, 235, 228),
                      fontSize: 18,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Tela1(),
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
