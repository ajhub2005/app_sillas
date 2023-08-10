import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles del Producto'),
      ),
      body: const Center(
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
            const Text(
              'Bienvenido',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            // Image.asset(
            //   'assets/images/welcome_image.png', // Ruta de la imagen
            //   width: 200,
            //   height: 200,
            // ),
            const SizedBox(height: 20),

            const Column(
              mainAxisAlignment:
                  MainAxisAlignment.center, // para centrar verticalmente
              children: [
                Center(
                  child: Text(
                    '''Somos una innovadora aplicación móvil diseñada para el negocio de sillas,
                     ya sea compras de sillas en línea  o también ofrece alquiler de sillas
                      para fiestas o eventos que ofrece una experiencia de compra única y conveniente
                       para clientes de todo tipo. Ya sea que esté buscando sillas para su hogar,
                        oficina, eventos especiales o cualquier otro lugar, “CHAILS" tiene una amplia
                         variedad de opciones para satisfacer sus experiencias y comodidades.
                     ''',
                    // tu texto aquí
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProductPage()),
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
