import 'package:flutter/material.dart';

import '../../shared/constants/constants.dart';
import '../../shared/validators/email_validator.dart';
import '../../shared/widgets/custom_text_form_field_widget.dart';
import '../home_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _passaworkdController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _namesController = TextEditingController();
  bool obscureText = true;
  bool cellformat = true;

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
              CustomTextFormFieldWidget(
                controller: _namesController,
                maxLength: 30,
                labelText: 'Nome',
                keyboardType: TextInputType.text,
                inputFormatters: null,
              ),
              CustomTextFormFieldWidget(
                controller: _emailController,
                labelText: 'Email',
                keyboardType: TextInputType.emailAddress,
                inputFormatters: null,
              ),
              CustomTextFormFieldWidget(
                controller: _phoneController,
                inputFormatters: true,
                labelText: 'Celular',
                hintText: '(00) 0000-0000',
                keyboardType: TextInputType.number,
              ),
              CustomTextFormFieldWidget(
                controller: _passaworkdController,
                labelText: 'Senha',
                maxLength: 4,
                keyboardType: TextInputType.number,
                obscureText: obscureText,
                onChangeObscureText: _onChangeObscureText,
                inputFormatters: null,
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
                        EmailValidator.emailValidador(emailValue, context);

                    if (emailError != null) {
                      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
                        const SnackBar(
                          content: Text('ALGO DE ERRADO COM O EMAIL'),
                        ),
                      );
                    } else {
                      String? nameValue = _namesController.text;
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

  void _onChangeObscureText() {
    setState(() {
      obscureText = !obscureText;
    });
  }
}
