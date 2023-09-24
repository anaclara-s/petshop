import 'package:flutter/material.dart';

import '../../shared/constants/constants.dart';
import '../add_your_pets_screen.dart';
import '../home_screen.dart';
import '../your_pets_screen.dart';
import 'login_screen.dart';
import 'register_screen.dart';

class LoginRegisterScreen extends StatelessWidget {
  const LoginRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      //
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 168, 24, 24),
      ),
      drawer: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: const Text('HOME SCREEN'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginRegisterScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text('LOGIN'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text('CADASTRO'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text('TELA INICIAL'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text('TELA PETS'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const YourPetsScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text('ADICIONAR PET'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddYourPetsScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      //
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/logo.png'),
          const SizedBox(height: kDefaultPaddin),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(300, 60),
              ),
              child: const Text('LOGIN'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: kDefaultPaddin),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(300, 60),
              ),
              child: const Text('CADASTRO'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterScreen(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
