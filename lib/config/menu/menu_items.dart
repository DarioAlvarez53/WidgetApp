//aqui se iran añadiendo cada una de las opciones del menu que se van a usar para crear 

import 'package:flutter/material.dart';

class MenuItems {
  //Propiedades del menu
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  //Creando el constructor de las propiedades del menu
  const MenuItems({
    required this.title, 
    required this.subTitle, 
    required this.link, 
    required this.icon
  });
}

//este es el listado de los items que va a tener el menu 
const appMenuItems = <MenuItems>[
  MenuItems(
    title: "Botones", 
    subTitle: "Vaios botones en Flutter", 
    link: '/buttons', 
    icon: Icons.smart_button_outlined
  ),
  MenuItems(
    title: "Tarjetas", 
    subTitle: "Un contenedor estilizado", 
    link: '/cards', 
    icon: Icons.credit_card
  ),
  MenuItems(
    title: "Progress Indicators", 
    subTitle: "Generales y controlados", 
    link: '/progress', 
    icon: Icons.refresh_rounded
  ),
  MenuItems(
    title: "Snackbars y dialogos", 
    subTitle: "Indicadores en pantalla", 
    link: '/snackbar', 
    icon: Icons.info_outline_rounded
  ),
  MenuItems(
    title: "Animated container", 
    subTitle: "Stateful widget animado", 
    link: '/animated', 
    icon: Icons.check_box_rounded
  )
];