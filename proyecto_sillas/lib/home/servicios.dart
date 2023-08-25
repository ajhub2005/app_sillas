import 'package:flutter/material.dart';
import 'vistadelaimagen.dart';
import 'Sesion.dart';
import 'compras.dart';




class Servicios extends StatelessWidget {
  const Servicios({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('COMPRAS'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 207, 223, 231), // Cambia el color de fondo a azul claro
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 0),
                const Text(
                  'Aqui podrás hacer tus compras en línea',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'CATEGORIAS',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                    height: 40), // Espacio entre el título y la imagen
                GestureDetector(
                  onTap: () {
                    // Navegar a la vista deseada al tocar la imagen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const compras()),
                    );
                  },
                  child: SizedBox(
                    width: 350,
                    child: SizedBox(
                      child: Image.asset(
                        'assets/images/imagen6.png',
                        fit: BoxFit.cover, // Ruta de la imagen
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 29),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          '''En categorías podrás encontrar una variedad de opciones para tu comodidad y preferencia.''',
                          style: TextStyle(
                            fontSize: 20,
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
                      MaterialPageRoute(
                          builder: (context) => const Sesion()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                    backgroundColor: Color.fromARGB(255, 193, 8, 8) // Ajusta el padding
                  ),
                  child: const Text('Seccion Especial'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


