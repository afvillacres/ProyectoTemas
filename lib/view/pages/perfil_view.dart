import 'package:flutter/material.dart';
import '../../model/user_model.dart';
import '../../theme/scheme_colors.dart';
import '../../theme/theme_background.dart';

class PerfilView extends StatelessWidget {
  const PerfilView({super.key});

  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)!.settings.arguments as UserModel?;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil del Usuario'),
        backgroundColor: ColorApp.primario, // Usa color del esquema
      ),

      // Aplica el fondo degradado global
      body: Container(
        decoration: BackGround.degradoPrincipal,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Avatar con color de acento del tema
                CircleAvatar(
                  radius: 45,
                  backgroundColor: ColorApp.acento,
                  child: const Icon(Icons.person, size: 50, color: Colors.white),
                ),
                const SizedBox(height: 20),

                // Nombre (usa tipografía global)
                Text(
                  user?.nombreCompleto ?? '',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 8),

                // Rol del usuario
                Text(
                  'Rol: ${user?.rol ?? ''}',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 4),

                // Correo
                Text(
                  user?.correo ?? '',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),

                const SizedBox(height: 30),

                // Botón principal (usa tema global)
                ElevatedButton.icon(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.logout),
                  label: const Text('Cerrar sesión'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}