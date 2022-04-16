//! Hago que solo importe los componentes necesarios y no todo el paquete
import 'package:flutter/material.dart' show Widget, IconData;

class MenuOption {
  final String route;
  final String name;
  final Widget widget;
  final IconData icon;

  //* hago que el orden de ingreso de los datos no sea el mismo que el del constructor pero si voy a requerir que ingrese todos los campos
  MenuOption(
      {required this.route,
      required this.name,
      required this.widget,
      required this.icon});
}
