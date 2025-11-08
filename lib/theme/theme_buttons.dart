import 'package:flutter/material.dart';
import 'scheme_colors.dart';

class ThemeButtom{
  static final botonPrincipal = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: ColorApp.primario,
      foregroundColor: ColorApp.textoClaro,
      padding: EdgeInsets.symmetric(
        horizontal: 30, vertical: 12
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
        textStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)
    ),
  );

  static final botonSecundario = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        foregroundColor: ColorApp.primario,
        padding: EdgeInsets.symmetric(
            horizontal: 28, vertical: 10
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        textStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        side: BorderSide(color: ColorApp.primario)
    ),
  );

}