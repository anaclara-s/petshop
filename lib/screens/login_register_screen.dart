import 'package:flutter/material.dart';

import 'login_screen.dart';
import 'home_screen.dart';
import 'register_screen.dart';

class LoginRegisterScreen extends StatelessWidget {
  const LoginRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 235, 228),
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
                      builder: (context) => LoginScreen(),
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
                      builder: (context) => RegisterScreen(),
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
            ],
          ),
        ),
      ),
      //
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset('assets/imagens/logo.jpg'),
          const Stack(
            children: [
              Positioned(
                child: Text(
                  'PETSHOP GAT & DOG',
                  style: TextStyle(
                    color: Color.fromARGB(255, 230, 94, 93),
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 200,
          ),
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
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
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
                    builder: (context) => RegisterScreen(),
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
