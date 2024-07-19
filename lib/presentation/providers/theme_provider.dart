import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/config/theme/app_theme.dart';

//crear un estado para un bool que se va a llamar isDarkModeProvider
final isDarkModeProvider = StateProvider<bool>((ref) => false);

//Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

//Nuevo estado para manejar un simple entero
final selectedColorProvider = StateProvider((ref) => 0);