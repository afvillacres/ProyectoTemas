import 'package:flutter/material.dart';
import 'scheme_colors.dart';

class ThemeForm {
  static final InputDecorationTheme campoTexto = InputDecorationTheme(
    filled: true,
    fillColor: ColorApp.secundario.withOpacity(0.2),
    labelStyle: const TextStyle(
      color: ColorApp.textoClaro,
      fontSize: 14,
    ),
    hintStyle: const TextStyle(color: Colors.white54),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Colors.white38,
        width: 1.2,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: ColorApp.acento,
        width: 1.8,
      ),
    ),
  );
}
