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
    title: "Riverpod counter", 
    subTitle: "Introduccion a Riverpod", 
    link: '/counter', 
    icon: Icons.numbers_rounded
  ),
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
  ),
  MenuItems(
    title: "UI Controls + tiles", 
    subTitle: "Una serie de controles de Flutter", 
    link: '/ui-controls', 
    icon: Icons.car_rental_rounded
  ),
  MenuItems(
    title: "Intoruccion a la aplicacion", 
    subTitle: "Pequeño tutorial de la aplicacion", 
    link: '/app-tutorial', 
    icon: Icons.accessibility_new_rounded
  ),
  MenuItems(
    title: "Infinite Scroll and Pull to Refresh", 
    subTitle: "Galeria de imagenes infinitas con refresh", 
    link: '/infinite-scroll', 
    icon: Icons.list_rounded
  ),
  
];