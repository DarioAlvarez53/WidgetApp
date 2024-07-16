import 'package:go_router/go_router.dart';
import 'package:widget_app/presentation/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    //las rutas se definen con GoRoute
    GoRoute(
      name: HomeScreen.name,
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      name: ButtonsScreen.name,
      path: '/buttons',
      builder: (context, state) => const ButtonsScreen(),
    ),

    GoRoute(
      name: CardsScreen.name ,
      path: '/cards',
      builder: (context, state) => const CardsScreen(),
    ),
  ],
);