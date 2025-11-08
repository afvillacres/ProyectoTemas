import 'package:flutter/material.dart';
import 'theme/general_theme.dart';
import 'view/login_view.dart';
import 'view/pages/perfil_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perfil de Usuario',
      theme: GeneralTheme.claro,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginView(),
        '/perfil': (context) => const PerfilView(),
      },
    );
  }
}
