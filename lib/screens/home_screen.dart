import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {
                print('PERFIL');
              },
              icon: const Icon(
                Icons.person,
                size: 35,
                color: Color.fromARGB(255, 230, 94, 93),
              ),
            ),
          ),
        ],
      ),

      //

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 199, 10, 66),
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(20),
                  ),
                  child: Icon(
                    MdiIcons.dog,
                    size: 35,
                  ),
                  onPressed: () {
                    print('CACHORRO');
                  },
                ),
                const Padding(
                  padding: EdgeInsets.all(20),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 199, 10, 66),
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(20),
                  ),
                  child: Icon(
                    MdiIcons.cat,
                    size: 35,
                  ),
                  onPressed: () {
                    print('GATO');
                  },
                ),
                const Padding(
                  padding: EdgeInsets.all(20),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 199, 10, 66),
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(20),
                  ),
                  child: Icon(
                    MdiIcons.bird,
                    size: 35,
                  ),
                  onPressed: () {
                    print('PASSARO');
                  },
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height / 1.5,
            color: const Color.fromARGB(255, 248, 210, 193),
            child: const Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 199, 10, 66),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: const Color.fromARGB(6, 0, 0, 0),
                    ),
                    child: Icon(
                      MdiIcons.packageVariantClosed,
                      size: 30,
                    ),
                    onPressed: () {
                      print('PEDIDOS');
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: const Color.fromARGB(6, 0, 0, 0),
                    ),
                    child: const Icon(
                      Icons.pets,
                      size: 30,
                    ),
                    onPressed: () {
                      print('PET');
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: const Color.fromARGB(6, 0, 0, 0),
                    ),
                    child: const Icon(Icons.home, size: 40),
                    onPressed: () {
                      print('INICIO');
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: const Color.fromARGB(6, 0, 0, 0),
                    ),
                    child: const Icon(Icons.store, size: 30),
                    onPressed: () {
                      print('LOJA');
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: const Color.fromARGB(6, 0, 0, 0),
                    ),
                    child: const Icon(Icons.calendar_month, size: 30),
                    onPressed: () {
                      print('AGENDA');
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
