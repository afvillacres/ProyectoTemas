import 'package:flutter/material.dart';
import '../../model/user_model.dart';
import '../../theme/scheme_colors.dart';

class PerfilView extends StatelessWidget {
  const PerfilView({super.key});

  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)!.settings.arguments as UserModel?;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil del Usuario'),
        backgroundColor: ColorApp.primario,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: ColorApp.superficie,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  blurRadius: 8,
                  offset: const Offset(2, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundColor: ColorApp.primario,
                  child: Icon(Icons.person, size: 50, color: Colors.white),
                ),
                const SizedBox(height: 20),
                Text(
                  user?.nombreCompleto ?? 'Invitado',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: ColorApp.textoClaro,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  user?.rol ?? '',
                  style: const TextStyle(color: ColorApp.textoSecundario),
                ),
                const Divider(height: 32),
                ListTile(
                  leading: const Icon(Icons.email, color: ColorApp.secundario),
                  title: Text(user?.correo ?? ''),
                ),
                ListTile(
                  leading: const Icon(Icons.account_circle_outlined,
                      color: ColorApp.secundario),
                  title: Text(user?.usuario ?? ''),
                ),
                const SizedBox(height: 20),
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
