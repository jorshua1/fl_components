import 'package:flutter/material.dart';
import 'package:fl_components/models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOption = <MenuOption>[
    // MenuOption(
    //     route: 'home',
    //     name: 'HomeScreen',
    //     widget: const HomeScreen(),
    //     icon: Icons.house),
    MenuOption(
        route: 'listview1',
        name: 'List view tipo 1',
        widget: const Listview1Screen(),
        icon: Icons.view_compact_alt),
    MenuOption(
        route: 'listview2',
        name: 'List view tipo 2',
        widget: const Listview2Screen(),
        icon: Icons.grid_view),
    MenuOption(
        route: 'alert',
        name: 'Alertas - Alerts',
        widget: const AlertScreen(),
        icon: Icons.warning_outlined),
    MenuOption(
        route: 'card',
        name: 'Tarjetas - Cards',
        icon: Icons.castle_rounded,
        widget: const CardScreen()),
    MenuOption(
        route: 'avatar',
        name: 'Avatar Screen',
        icon: Icons.person_add,
        widget: const AvatarScreen()),
    MenuOption(
        route: 'animated',
        name: 'Animated Screen',
        icon: Icons.blur_on_outlined,
        widget: const AnimatedScreen()),
    MenuOption(
        route: 'input',
        name: 'Input Screen',
        widget: const InputScreen(),
        icon: Icons.format_list_numbered_rtl)
  ];

  // Regresa un metodo que devolvera un mapa y esta apunta a una funcion que recibe un buildcontext
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    // definimos lo que devolveremos, le inidicamo que recibira como clave un string y como valor un widget (ejemplo linea 43)
    Map<String, Widget Function(BuildContext)> appRoutes = {
      // Esto es valido porque cumple con los requisitos que pide devolver el metodo, string como llave
      // String  | Widget(buildContext)
      //  'home':           (context) => const HomeScreen(),
      //* Pero si se hace de esta forma tendriamos que hacer las inserciones manualmente, la idea es evitar hacer eso
    };

    //? se define la ruta para que siempre se encuentre o sino no existiria el home
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    //? Creamos un ciclo que nos recorra las opciones del menu y asi nos indique las
    for (final option in menuOption) {
      //? agregamos los elementos recorridos en nuestro objeto appRoutes necesarios para devolver del metodo
      //*                 String  | (BuildContext) |  Widget a devolver
      appRoutes.addAll({option.route: (context) => option.widget});
    }

    return appRoutes;
  }

// *Este metodo funciona, solo que se comenta para poder experimentar el que esta lineas arriba
//? Genera una lista de rutas indicando el tipo de datos que recibe
//   static Map<String, Widget Function(BuildContext)> routes = {
//     'home': (context) => const HomeScreen(),
//     'listview1': (context) => const Listview1Screen(),
//     'listview2': (context) => const Listview2Screen(),
//     'alert': (context) => const AlertScreen(),
//     'card': (context) => const CardScreen(),
//   };

  //? Redirecciona a una vista ya routeada en dado caso de que la vista que se solicita no existe
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const CardScreen(),
    );
  }
}
