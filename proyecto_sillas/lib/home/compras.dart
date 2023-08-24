import 'package:flutter/material.dart';
import 'vistadelaimagen.dart';

class compras extends StatelessWidget {
  const compras({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Productos'),
      ),
      body: Container(
        color: const Color.fromARGB(
            255, 234, 248, 255), // Color de fondo azul claro
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 0),
                const Text(
                  '¡Bienvenido a nuestros productos',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Aquí puedes los productos Disponibles que tenemos para ti',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildProductCard(
                      context,
                      'Silla de Oficina', // Nombre del producto
                      'assets/images/captura.PNG',
                      '\$86,99 US',
                    ),
                    _buildProductCard(
                      context,
                      'Sillas de Comedor', // Nombre del producto
                      'assets/images/imagen2.png',
                      '\$75,80 US',
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildProductCard(
                      context,
                      'Silla Gamer', // Nombre del producto
                      'assets/images/imagen3.png',
                      '\$59,99 US',
                    ),
                    _buildProductCard(
                      context,
                      'Sillas Clasicas', // Nombre del producto
                      'assets/images/Captura2.PNG',
                      '\$42,50 US',
                    ),
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

  Widget _buildProductCard(
      BuildContext context, String productName, String imagePath, String price) {
    return Container(
      width: 150,
      height: 250,
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
          const SizedBox(height: 10),
          Image.asset(imagePath, width: 100, height: 100),
          const SizedBox(height: 20),
          Text(
            'Costo: $price',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Acción al presionar el botón
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const metododepago()),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 62, 67, 71),
              textStyle: const TextStyle(
                fontSize: 16,
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
