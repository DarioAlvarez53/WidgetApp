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
    link: '/card', 
    icon: Icons.credit_card
  )
];