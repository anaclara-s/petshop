import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:petshop/shared/models/bottom_menu.dart';

import 'detail_screen.dart';
import '../shared/constants/constants.dart';
import '../shared/models/product.dart';
import '../shared/components/items.dart';

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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
          const SizedBox(
            height: 20,
          ),
          //
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.60,
                ),
                itemBuilder: (context, index) => Item(
                  product: products[index],
                  press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailsScreen(product: products[index]),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const BottomMenu(),
        ],
      ),
    );
  }
}
