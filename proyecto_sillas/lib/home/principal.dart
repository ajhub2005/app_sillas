import 'package:flutter/material.dart';
import 'servicios.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Información del Producto'),
            // Aquí puedes agregar detalles del producto como imagen, descripción, precio, etc.
          ],
        ),
      ),
    );
  }
}

//----------------------------------------------------------------
class MainMenuPage extends StatefulWidget {
  const MainMenuPage({super.key});

  @override
  State<MainMenuPage> createState() => _MainMenuPageState();
}

class _MainMenuPageState extends State<MainMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú Principal'),
      ),
      body: Center(
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
            Container(
              width: 200,
              child: SizedBox(
                child: Image.asset(
                  'assets/images/imagen2.png',
                  fit: BoxFit.cover, // Ruta de la imagen
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
              child: const Text('Ver Nuestros Servicios'),
            ),
          ],
        ),
      ),
    );
  }
}
