import 'package:flutter/material.dart';

import '../../shared/constants/constants.dart';
import '../../shared/widgets/custom_text_form_field_widget.dart';
import '../home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _passaworkdController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  bool obscureText = true;

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
                'LOGIN',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: kButonsBackgroundColor,
                ),
              ),
              const Text(
                'BEM VINDO DE VOLTA',
                style: TextStyle(
                  fontSize: 18,
                  color: kButonsBackgroundColor,
                ),
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

  void _onChangeObscureText() {
    setState(() {
      obscureText = !obscureText;
    });
  }
}
