import 'package:flutter/material.dart';
import 'vistadelaimagen.dart';

class Sesion extends StatelessWidget {
  const Sesion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Especial'),
      ),
      body: Container(
        color: const Color.fromARGB(255, 234, 248, 255), // Color de fondo azul claro
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 0),
                const Text(
                  '¡Bienvenido a la Sección especial!',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Aquí puedes ver productos especiales que tenemos para ti',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildProductCard(context, 'Silla Ortopedica', 'assets/images/imagen7.jpg', '\$75,80 US'),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildProductCard(context, 'Silla De Ruedas', 'assets/images/imagen4.png', '\$42,50 US'),
                  ],
                ),
                // Puedes continuar agregando más filas de cuadros de productos
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProductCard(BuildContext context, String productName, String imagePath, String price) {
    return Container(
      width: 250,
      height: 350,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            productName, // Nombre del producto
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Image.asset(imagePath, width: 200, height: 100),
          const SizedBox(height: 25),
          Text(
            'Costo: $price',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Acción al presionar el botón
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const metododepago()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 62, 67, 71),
              textStyle: const TextStyle(
                fontSize: 20,
              ),
              minimumSize: const Size(120, 40),
            ),
            child: const Text('Comprar'),
          ),
        ],
      ),
    );
  }
}
