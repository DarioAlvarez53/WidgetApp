import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_app/config/menu/menu_items.dart';
// import 'package:widget_app/presentation/screens/cards/cards_screen.dart';

class HomeScreen extends StatelessWidget {

  static const String name = 'home_screen';
  
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // physics: const BouncingScrollPhysics(),
      //Indicando cuantos items hay
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        //Consultando la lista de la aplicacion
        final menuItem = appMenuItems[index];
        //retornando la informacion de la lista de menu
        return _CustomListTitle(menuItem: menuItem);
      },
    );
  }
}

class _CustomListTitle extends StatelessWidget {
  const _CustomListTitle({
    required this.menuItem,
  });

  final MenuItems menuItem;

  @override
  Widget build(BuildContext context) {

    final color = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon (menuItem.icon, color: color.primary,) ,// este es el icono que esta del lado izquierdo del widget
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: color.primary,) ,//es el icono o widget que se coloca del lado derecho
      title: Text( menuItem.title ),
      subtitle: Text( menuItem.subTitle ),
      onTap: () {
        // Navigator.of(context).push( //el push es que va a poner una pagian sobre de otra
        //   MaterialPageRoute(
        //     builder: (context) => const ButtonsScreen(),
        //   ),
        // );

        //aqui llamamos al navigator
        // Navigator.pushNamed(context, menuItem.link);

        context.push(menuItem.link);
        // context.pushNamed(CardsScreen.name);
      },
    );
  }
}