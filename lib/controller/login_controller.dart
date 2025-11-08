import 'package:flutter/material.dart';
import '../model/user_model.dart';

class LoginController {
  final TextEditingController usuarioCtrl = TextEditingController();
  final TextEditingController claveCtrl = TextEditingController();

  final List<UserModel> usuarios = [
    UserModel(
      usuario: 'admin',
      password: '1234',
      nombreCompleto: 'Administrador General',
      correo: 'admin@gmail.com',
      rol: 'Administrador',
    ),
    UserModel(
      usuario: 'alex',
      password: 'abcd',
      nombreCompleto: 'Alexander Villacres',
      correo: 'afvillacres@espe.edu.ec',
      rol: 'Usuario',
    ),
  ];

  bool validarLogin(BuildContext context) {
    final user = usuarios.firstWhere(
          (u) =>
      u.usuario == usuarioCtrl.text && u.password == claveCtrl.text,
      orElse: () => UserModel(
        usuario: '',
        password: '',
        nombreCompleto: '',
        correo: '',
        rol: '',
      ),
    );

    if (user.usuario.isNotEmpty) {
      Navigator.pushNamed(context, '/perfil', arguments: user);
      return true;
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Usuario o contraseña incorrectos')),
      );
      return false;
    }
  }
}
