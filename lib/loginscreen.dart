import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 235, 228),
      //
      body: Center(
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
            SizedBox(
              width: 300,
              child: TextFormField(
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 243, 171, 165),
                  enabledBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 230, 94, 93),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 230, 94, 93),
                    ),
                  ),
                  labelText: 'EMAIL/CELULAR',
                  labelStyle: const TextStyle(
                    color: Color.fromARGB(255, 251, 235, 228),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 243, 171, 165),
                  enabledBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 230, 94, 93),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 230, 94, 93),
                    ),
                  ),
                  labelText: 'SENHA',
                  labelStyle: const TextStyle(
                    color: Color.fromARGB(255, 251, 235, 228),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
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
                  print('LOGIN');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
