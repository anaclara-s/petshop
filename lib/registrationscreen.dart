import 'package:flutter/material.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

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
              TextFormField(
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
                  labelText: 'NOME',
                  labelStyle: const TextStyle(
                    color: Color.fromARGB(255, 251, 235, 228),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //
              SizedBox(
                width: 300,
                child: Column(
                  children: [
                    TextFormField(
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
                        labelText: 'EMAIL',
                        labelStyle: const TextStyle(
                          color: Color.fromARGB(255, 251, 235, 228),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //
              SizedBox(
                child: Column(
                  children: [
                    TextFormField(
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
                        labelText: 'CELULAR',
                        labelStyle: const TextStyle(
                          color: Color.fromARGB(255, 251, 235, 228),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //
              SizedBox(
                child: Column(
                  children: [
                    TextFormField(
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
                    print('CRIAR');
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
