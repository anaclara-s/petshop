import 'package:flutter/material.dart';

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 211, 132, 132),
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
              icon: Icon(Icons.person),
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
                icon: Icon(Icons.pending),
                label: Text('CACHORRO'),
              ),
              //
              ElevatedButton.icon(
                onPressed: () {
                  print('GATO');
                },
                icon: Icon(Icons.pending),
                label: Text('GATO'),
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
                      icon: Icon(Icons.check_box),
                      label: Text('PEDIDOS'),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        print('PET');
                      },
                      icon: Icon(Icons.pets),
                      label: Text('PET'),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        print('CASA');
                      },
                      icon: Icon(Icons.home),
                      label: Text('CASA'),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        print('LOJA');
                      },
                      icon: Icon(Icons.store),
                      label: Text('LOJA'),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        print('AGENDA');
                      },
                      icon: Icon(Icons.calendar_month),
                      label: Text('AGENDA'),
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
