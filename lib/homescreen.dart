import 'package:flutter/material.dart';
import 'package:petshop/login.dart';
import 'cadastro.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 235, 228),
      //
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset('assets/logo.jpg'),
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

          //
          const SizedBox(
            height: 200,
          ),

          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                minimumSize: const Size(300, 60),
                backgroundColor: const Color.fromARGB(255, 230, 94, 93),
              ),
              child: const Text('LOGIN'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ),
                );
              },
            ),
          ),
          //
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                minimumSize: const Size(300, 60),
                backgroundColor: const Color.fromARGB(255, 230, 94, 93),
              ),
              child: const Text('CADASTRO'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Cadastro(),
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
