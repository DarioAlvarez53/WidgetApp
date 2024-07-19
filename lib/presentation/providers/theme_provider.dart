import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/config/theme/app_theme.dart';

//crear un estado para un bool que se va a llamar isDarkModeProvider
final isDarkModeProvider = StateProvider<bool>((ref) => false);

//Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

//Nuevo estado para manejar un simple entero
final selectedColorProvider = StateProvider((ref) => 0);

//Nuevo estado de objeto de tipo AppTheme (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

class ThemeNotifier extends StateNotifier<AppTheme> {

  //State = Estado = Nueva instancia del AppTheme();
  ThemeNotifier(): super( AppTheme() );

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex (int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }

}