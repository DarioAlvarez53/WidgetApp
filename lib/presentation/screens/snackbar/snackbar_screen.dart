import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {

  static const name = 'snackbar_screeen';

  const SnackbarScreen({super.key});

  //creando un metodo para el snackbar
  void showCustomSnackbar(BuildContext context) {
    
    
    //funcionalidad de un snackbar
    //esto es para que se borre el snackbar cada que presione el boton
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackBar = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: (){}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y dialogos'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar snackbar'),
        icon: const Icon(Icons.remove_red_eye_rounded),
        onPressed: () => showCustomSnackbar(context)
      ),
    );
  }
}