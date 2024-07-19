//crear un estado para un bool que se va a llamar isDarkModeProvider
import 'package:flutter_riverpod/flutter_riverpod.dart';

final isDarkModeProvider = StateProvider<bool>((ref) => false);