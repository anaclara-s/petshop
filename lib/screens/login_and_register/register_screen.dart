import 'package:flutter/material.dart';

import '../../shared/constants/constants.dart';
import '../../shared/validators/email_validator.dart';
import '../../shared/widgets/cell_number.dart';
import '../../shared/widgets/email.dart';
import '../../shared/widgets/password.dart';
import '../../shared/widgets/tutors_name.dart';
import '../home_screen.dart';

class RegisterScreen extends StatelessWidget {
  final TextEditingController _senhaController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _tutorsNameController = TextEditingController();

  RegisterScreen({Key? key}) : super(key: key);

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
                  color: kButonsBackgroundColor,
                ),
              ),
              const Text(
                'Seja bem vindo',
                style: TextStyle(
                  fontSize: 18,
                  color: kButonsBackgroundColor,
                ),
              ),
              TutorsNameWidget(controller: _tutorsNameController),
              EmailWidget(controller: _emailController),
              const CellNumberWidget(),
              PasswordWidget(controller: _senhaController),
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
                        EmailValidator.emailValidador(emailValue, context);

                    if (emailError != null) {
                      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
                        const SnackBar(
                          content: Text('ALGO DE ERRADO COM O EMAIL'),
                        ),
                      );
                    } else {
                      String? nameValue = _tutorsNameController.text;
                      print('Nome digitado: $nameValue');
                      if (RegExp(r'^[a-zA-Z\s]+$').hasMatch(nameValue)) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      } else {
                        print('Erro na validação do nome');
                        ScaffoldMessenger.maybeOf(context)?.showSnackBar(
                          const SnackBar(
                            content: Text('FAVOR PREENCHER O CAMPO NOME'),
                          ),
                        );
                      }
                    }
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
