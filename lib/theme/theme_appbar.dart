import 'package:flutter/material.dart';
import 'scheme_colors.dart';

class ThemeAppBar{
  static const AppBarTheme estilo = AppBarTheme(
    backgroundColor: ColorApp.primario,
    foregroundColor: ColorApp.textoClaro,
    centerTitle: true,
    elevation: 3,
    titleTextStyle: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: ColorApp.textoClaro
    ),
  );
}