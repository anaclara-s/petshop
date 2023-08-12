import 'package:flutter/material.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 61, 54, 73),
      //
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextFormField(
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.amber,
                  enabledBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 60, 255, 0),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Colors.limeAccent,
                    ),
                  ),
                  prefixIcon: const Icon(
                    Icons.person_outline,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  labelText: 'NOME',
                  labelStyle: const TextStyle(
                    color: Colors.brown,
                  ),
                ),
              ),
              //
              SizedBox(
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextFormField(
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(255, 35, 16, 105),
                        enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.orange,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.red,
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.email_outlined,
                          color: Colors.pinkAccent,
                        ),
                        labelText: 'EMAIL',
                        labelStyle: const TextStyle(
                          color: Colors.amberAccent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextFormField(
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.brown,
                        enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.green,
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.phone_android,
                          color: Colors.amberAccent,
                        ),
                        labelText: 'CELULAR',
                        labelStyle: const TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextFormField(
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.brown,
                        enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.green,
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.lock_outline,
                          color: Colors.amberAccent,
                        ),
                        labelText: 'SENHA',
                        labelStyle: const TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //
              SizedBox(
                child: ElevatedButton(
                  child: const Text('CRIAR'),
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
