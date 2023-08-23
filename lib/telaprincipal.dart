import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 235, 228),
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
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 30, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 199, 10, 66),
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20),
                  ),
                  child: new Icon(
                    MdiIcons.dog,
                    size: 35,
                  ),
                  onPressed: () {
                    print('CACHORRO');
                  },
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 199, 10, 66),
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20),
                  ),
                  child: new Icon(
                    MdiIcons.cat,
                    size: 35,
                  ),
                  onPressed: () {
                    print('GATO');
                  },
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 199, 10, 66),
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20),
                  ),
                  child: new Icon(
                    MdiIcons.bird,
                    size: 35,
                  ),
                  onPressed: () {
                    print('GATO');
                  },
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height / 1.5,
            color: Color.fromARGB(255, 248, 210, 193),
            child: Column(
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
            decoration: BoxDecoration(
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
                      shadowColor: Color.fromARGB(6, 0, 0, 0),
                    ),
                    child: new Icon(
                      MdiIcons.packageVariantClosed,
                      size: 30,
                    ),
                    onPressed: () {
                      print('PEDIDOS');
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Color.fromARGB(6, 0, 0, 0),
                    ),
                    child: Icon(
                      Icons.pets,
                      size: 30,
                    ),
                    onPressed: () {
                      print('PET');
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: const Color.fromARGB(6, 0, 0, 0),
                    ),
                    child: Icon(Icons.home, size: 40),
                    onPressed: () {
                      print('INICIO');
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Color.fromARGB(6, 0, 0, 0),
                    ),
                    child: Icon(Icons.store, size: 30),
                    onPressed: () {
                      print('LOJA');
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Color.fromARGB(6, 0, 0, 0),
                    ),
                    child: Icon(Icons.calendar_month, size: 30),
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
