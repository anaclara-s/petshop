import 'package:flutter/material.dart';

import '../constants/constants.dart';

class AppBarCustomized extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCustomized({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
              color: kAppBarColor,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
