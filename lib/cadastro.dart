import 'package:flutter/material.dart';
import 'config.dart';
import 'telaprincipal.dart';

class Cadastro extends StatelessWidget {
  final TextEditingController _senhaController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  Cadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 235, 228),
      //
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'CRIAR CONTA',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 230, 94, 93),
                ),
              ),
              const Text(
                'Seja bem vindo',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 230, 94, 93),
                ),
              ),
              //
              const SizedBox(
                child: Nome(),
              ),
              //
              SizedBox(
                child: Email(controller: _emailController),
              ),
              //
              const SizedBox(
                child: Celular(),
              ),
              //
              SizedBox(
                child: Column(
                  children: [
                    Senha(controller: _senhaController),
                  ],
                ),
              ),
              //
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
                    'CRIAR',
                    style: TextStyle(
                      color: Color.fromARGB(255, 251, 235, 228),
                      fontSize: 18,
                    ),
                  ),
                  onPressed: () {
                    String? emailValue = _emailController.text;
                    String? emailError = emailValidador(emailValue);
                    if (emailError == null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Tela1(),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
                        const SnackBar(
                          content: Text('ALGO DE ERRADO COM O EMAIL'),
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      //
    );
  }
}
