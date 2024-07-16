import 'package:flutter/material.dart';

//Creando el arreglo de colores
const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pink,
  Colors.pinkAccent,
];


class AppTheme {

  final int selectedColor;

  AppTheme ({
    this.selectedColor = 0,
  }): assert ( selectedColor >= 0, "Selected color must be greater then 0"),
      assert ( selectedColor < colorList.length, 
        "Selected color must be less or equal than ${colorList.length - 1}");

  //Creando el metodo
  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: const AppBarTheme(
      centerTitle: false
    )
  );

}