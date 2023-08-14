import 'package:flutter/material.dart';

class Servicios extends StatelessWidget {
  const Servicios({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('COMPRAS'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 0),
            const Text(
              'Aqui podras hacer tus compras en linea',
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
            const SizedBox(height: 40), // Espacio entre el título y la imagen
            Container(
              width: 350,
              child: SizedBox(
                child: Image.asset(
                  'assets/images/imagen6.png',
                  fit: BoxFit.cover, // Ruta de la imagen
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
                      '''En la vista de categorías podrás ver todo tipo de sillas para su comodidad y preferencia
                      ''',
                      style: TextStyle(
                        fontSize: 23,
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
              child: const Text('Ver Nuestros Servicios'),
            ),
          ],
        ),
      ),
    );
  }
}
