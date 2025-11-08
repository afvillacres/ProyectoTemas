import 'package:flutter/material.dart';
import 'scheme_colors.dart';
import 'theme_appbar.dart';
import 'theme_background.dart';
import 'theme_buttons.dart';
import 'theme_form.dart';
import 'typegraphy.dart';

class GeneralTheme {
  static ThemeData claro = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      primary: ColorApp.primario,
      secondary: ColorApp.secundario,
      background: ColorApp.fondo,
      onPrimary: ColorApp.textoClaro,
      onSecondary: ColorApp.textoClaro,
    ),
    scaffoldBackgroundColor: ColorApp.fondo,
    textTheme: TypographyApp.texto,
    appBarTheme: ThemeAppBar.estilo,
    elevatedButtonTheme: ThemeButtom.botonPrincipal,
    outlinedButtonTheme: ThemeButtom.botonSecundario,
    inputDecorationTheme: ThemeForm.campoTexto,
  );
}