import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'floating_vertical_menu_delegate.dart';

class FloatingMenu extends StatefulWidget {
  const FloatingMenu({super.key});

  @override
  State<FloatingMenu> createState() => _FloatingMenuState();
}

class _FloatingMenuState extends State<FloatingMenu>
    with SingleTickerProviderStateMixin {
  late AnimationController animation;
  final menuIsOpen = ValueNotifier<bool>(false);

  final String addButtonTag = 'addButton';
  final String showerButtonTag = 'showerButton';
  final String needleButtonTag = 'needleButton';

  @override
  void initState() {
    super.initState();
    animation = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
  }

  @override
  void dispose() {
    animation.dispose();
    super.dispose();
  }

  toggleMenu() {
    menuIsOpen.value ? animation.reverse() : animation.forward();
    menuIsOpen.value = !menuIsOpen.value;
  }

  @override
  Widget build(BuildContext context) {
    return Flow(
      clipBehavior: Clip.none,
      delegate: FloatingVerticalMenuDelegate(animation: animation),
      children: [
        FloatingActionButton(
          onPressed: () => toggleMenu(),
          heroTag: addButtonTag,
          child:
              AnimatedIcon(icon: AnimatedIcons.add_event, progress: animation),
        ),
        FloatingActionButton(
          onPressed: () {},
          heroTag: showerButtonTag,
          child: const Icon(
            Icons.shower,
            color: Colors.white,
          ),
        ),
        FloatingActionButton(
          onPressed: () {},
          heroTag: needleButtonTag,
          child: Icon(
            MdiIcons.needle,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
