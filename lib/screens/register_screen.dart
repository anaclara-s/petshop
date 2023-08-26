import 'package:flutter/material.dart';

import 'home_screen.dart';
import '../shared/validators/email_validator.dart';
import '../shared/widgets/cell_number.dart';
import '../shared/widgets/email.dart';
import '../shared/widgets/name.dart';
import '../shared/widgets/password.dart';

class RegisterScreen extends StatelessWidget {
  final TextEditingController _senhaController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              const SizedBox(
                child: NameWidget(),
              ),
              SizedBox(
                child: EmailWidget(controller: _emailController),
              ),
              const SizedBox(
                child: CellNumberWidget(),
              ),
              SizedBox(
                child: Column(
                  children: [
                    PasswordWidget(controller: _senhaController),
                  ],
                ),
              ),
              SizedBox(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(230, 70),
                  ),
                  child: const Text(
                    'CRIAR',
                  ),
                  onPressed: () {
                    String? emailValue = _emailController.text;
                    String? emailError =
                        CustomValidators.emailValidador(emailValue);
                    if (emailError == null) {
                      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
                        const SnackBar(
                          content: Text('ALGO DE ERRADO COM O EMAIL'),
                        ),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
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
