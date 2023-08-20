import 'package:flutter/material.dart';

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 211, 132, 132),
      //
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepPurple,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {
                print('PERFIL');
              },
              icon: const Icon(Icons.person),
            ),
          ),
        ],
        toolbarHeight: 60,
      ),
      //
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  print('CACHORRO');
                },
                icon: const Icon(Icons.pending),
                label: const Text('CACHORRO'),
              ),
              //
              ElevatedButton.icon(
                onPressed: () {
                  print('GATO');
                },
                icon: const Icon(Icons.pending),
                label: const Text('GATO'),
              ),
            ],
          ),

          //
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        print('PEDIDOS');
                      },
                      icon: const Icon(Icons.check_box),
                      label: const Text('PEDIDOS'),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        print('PET');
                      },
                      icon: const Icon(Icons.pets),
                      label: const Text('PET'),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        print('CASA');
                      },
                      icon: const Icon(Icons.home),
                      label: const Text('CASA'),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        print('LOJA');
                      },
                      icon: const Icon(Icons.store),
                      label: const Text('LOJA'),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        print('AGENDA');
                      },
                      icon: const Icon(Icons.calendar_month),
                      label: const Text('AGENDA'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
