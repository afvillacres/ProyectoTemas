import 'package:flutter/material.dart';
import '../controller/login_controller.dart';
import '../theme/scheme_colors.dart';
import '../theme/theme_background.dart';

class LoginView extends StatelessWidget {
  final LoginController controller = LoginController();

  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Usa el fondo degradado definido en theme_background.dart
        decoration: BackGround.degradoPrincipal,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Iniciar Sesión',
                  style: TextStyle(
                    color: ColorApp.textoClaro,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),

                // Campo de Usuario (usa ThemeForm automaticamente)
                TextField(
                  controller: controller.usuarioCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Usuario',
                  ),
                ),

                const SizedBox(height: 20),

                // Campo de Contraseña
                TextField(
                  controller: controller.claveCtrl,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Contraseña',
                  ),
                ),

                const SizedBox(height: 25),

                // Botón principal (usa el tema de ThemeButtom)
                ElevatedButton(
                  onPressed: () => controller.validarLogin(context),
                  child: const Text('Ingresar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}