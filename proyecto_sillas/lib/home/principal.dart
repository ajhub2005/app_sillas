import 'package:flutter/material.dart';
import 'servicios.dart';
import 'package:proyecto_sillas/logins/login.dart';

class MainMenuPage extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const MainMenuPage({Key? key});

  @override
  State<MainMenuPage> createState() => _MainMenuPageState();
}

class _MainMenuPageState extends State<MainMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      
      body: Stack(
        
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 207, 223, 231), // Cambia el color de fondo
            ),
          ),
          Container(
                      alignment: Alignment.topRight,
                      padding: const EdgeInsets.all(8),
                      child: IconButton(
                        icon: const Icon(
                          Icons.power_settings_new,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          // Cerrar la sesión y redirigir a la pantalla de inicio de sesión
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const LoginPage(), // Cambia LoginScreen por tu pantalla de inicio de sesión
                          ));
                        },
                      ),
                    ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 0),
                const Text(
                  'Bienvenido User!',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 120), // Espacio entre el título y la imagen
                SizedBox(
                  width: 200,
                  child: SizedBox(
                    child: Image.asset(
                      'assets/images/imagen2.png', // Ruta de la imagen
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 100),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          '''Somos una innovadora aplicación móvil diseñada para el negocio de sillas, ya sea compras de sillas en línea para fiestas o eventos que ofrece una experiencia de compra única y conveniente para clientes de todo tipo. Ya sea que esté buscando sillas para su hogar, oficina, eventos especiales o cualquier otro lugar, “CHAILS" tiene una amplia variedad de opciones para satisfacer sus experiencias y comodidades.
                          ''',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Servicios()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric( horizontal: 25, vertical: 25), 
                    backgroundColor: Color.fromARGB(255, 5, 143, 156)// Ajusta el padding
                  ),
                  child: const Text('Ver Nuestros Servicios'),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
