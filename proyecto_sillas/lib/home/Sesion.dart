import 'package:flutter/material.dart';

class Sesion extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Sesion({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nueva Clase'),
      ),
      body: Center(
        child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 0),
            const Text(
              '¡Bienvenido a la Nueva Clase!',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(    
              'Aquí puedes agregar contenido y personalizar esta clase.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset('assets/imagen1.png'), // Ruta de la primera imagen
            ),
            const SizedBox(height: 10),
            const Text(
              'Costo: \$50', // Cambia esto al costo correcto
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Acción al presionar el botón
              },
              child: const Text('Comprar'),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset('assets/imagen2.png'), // Ruta de la segunda imagen
            ),
            const SizedBox(height: 10),
            const Text(
              'Costo: \$75', // Cambia esto al costo correcto
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Acción al presionar el botón
              },
              child: const Text('Comprar'),
            ),
             const SizedBox(height: 20),
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset('assets/imagen1.png'), // Ruta de la primera imagen
            ),
            const SizedBox(height: 10),
            const Text(
              'Costo: \$50', // Cambia esto al costo correcto
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Acción al presionar el botón
              },
              child: const Text('Comprar'),
            ),
            // Puedes continuar agregando más contenedores con imágenes y botones
          ],
        ),
      ),
       ),
    );
  }
}
