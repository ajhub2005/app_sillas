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
      body: Padding(
        padding: const EdgeInsets.all(150.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Icons.login, // Comentamos esto
              Image.asset(
                'assets/images/logo_chair.png', // Ruta de la imagen
                width: 400,
                height: 200,
              ),
              const SizedBox(height: 70),
              TextFormField(
                controller: _emailController,
                decoration:
                    const InputDecoration(labelText: 'Correo electrónico'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa tu correo';
                  }
                  // Puedes agregar más validaciones de correo aquí
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(labelText: 'Contraseña'),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa tu contraseña';
                  }
                  // Puedes agregar más validaciones de contraseña aquí
                  return null;
                },
              ),

              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/alejo");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey, // Cambia el color aquí
                ),
                child: const Text('Iniciar sesión'),
              ),

              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/registro");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey, // Cambia el color aquí
                ),
                child: const Text('  Regístrate  '),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
