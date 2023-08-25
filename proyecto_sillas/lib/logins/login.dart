import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'), // Título principal
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(169, 137, 163, 170), // Color de fondo gris claro
        ),
        child: Padding(
          padding: const EdgeInsets.all(150.0),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/logo_chair.png', // Ruta de la imagen
                    width: 130,
                    height: 130,
                  ),
                  const SizedBox(
                      height: 20), // Espacio entre imagen y campo de correo
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      labelText: 'Correo electrónico',
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 20.0), // Ajusta el padding
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor ingresa tu correo';
                      }
                      // Puedes agregar más validaciones de correo aquí
                      return null;
                    },
                  ),
                  const SizedBox(
                      height:
                          40), // Espacio entre campos de correo y contraseña
                  TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      labelText: 'Contraseña',
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 20.0), // Ajusta el padding
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor ingresa tu contraseña';
                      }
                      // Puedes agregar más validaciones de contraseña aquí
                      return null;
                    },
                  ),

                  const SizedBox(
                      height:
                          20), // Espacio entre campos de contraseña y botones
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          // Agrega aquí la lógica para recuperar la contraseña
                        },
                        child: const Text('Recuperar Contraseña'),
                      ),
                    ],
                  ),

                  const SizedBox(height: 5), // Espacio entre botones
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/opcionnes");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey, // Cambia el color aquí
                      fixedSize: const Size(220, 50), // Define el tamaño
                    ),
                    child: const Text('Iniciar sesión'),
                  ),
                  const SizedBox(height: 10), // Espacio entre botones
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/registro");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey, // Cambia el color aquí
                      fixedSize: const Size(220, 50), // Define el tamaño
                    ),
                    child: const Text('  Regístrate  '),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
