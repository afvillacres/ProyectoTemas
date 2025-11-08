class UserModel {
  final String usuario;
  final String password;
  final String nombreCompleto;
  final String correo;
  final String rol;

  UserModel({
    required this.usuario,
    required this.password,
    required this.nombreCompleto,
    required this.correo,
    required this.rol,
  });
}