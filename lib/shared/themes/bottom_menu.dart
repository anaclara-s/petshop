import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../screens/home_screen.dart';
import '../../screens/your_pets_screen.dart';
import '../constants/constants.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      decoration: const BoxDecoration(
        color: kButonsBackgroundColor,
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const YourPetsScreen(),
                  ),
                );
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
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
    );
  }
}
