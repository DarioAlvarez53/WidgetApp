import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_app/config/menu/menu_items.dart';

class SideMenu extends StatefulWidget {

  final GlobalKey<ScaffoldState> scaffoldKey;

  const SideMenu({
    super.key, 
    required this.scaffoldKey
  });

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {

  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {

    //Definicion del padding del notch
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;

    final color = Theme.of(context).colorScheme;

    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value) {
        setState(() {
          navDrawerIndex = value;
        });

        final menuItem = appMenuItems[value];
        context.push(menuItem.link);
        widget.scaffoldKey.currentState?.closeDrawer();
      },
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(28, hasNotch ? 0 : 20, 16, 10),
          child: Text(
            'Main',
            style: TextStyle(
              fontWeight: FontWeight.bold, 
              fontSize: 18,
              color: color.primary
            ),
          ),
        ),

        ...appMenuItems
        .sublist(0,3)
        .map(
          (item) => NavigationDrawerDestination (
            icon: Icon(item.icon),
            label: Text(item.title),
            
          ),
        ),

        const Padding(
          padding: EdgeInsets.fromLTRB(28, 16, 28, 16),
          child: Divider(),
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(28, 10, 16, 10),
          child:  Text(
            'More options', 
            style: TextStyle(
              fontWeight: FontWeight.bold, 
              fontSize: 18,
              color: color.primary
            ),
          ),
        ),

        ...appMenuItems
        .sublist(3)
        .map(
          (item) => NavigationDrawerDestination (
            icon: Icon(item.icon),
            label: Text(item.title, )
          ),
        ),
      ]
    );
  }
}