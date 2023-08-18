import 'package:flutter/material.dart';

class VistaDeLaImagen extends StatelessWidget {
  const VistaDeLaImagen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Productos'),
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
                  '¡Bienvenido a nuestros productos',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Aquí puedes ver los productos Disponibles que tenemos para ti',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   _buildProductCard(context, 'assets/images/captura.PNG', '\$86,99 US', 'Sillas de Oficina'),
                   _buildProductCard(context, 'assets/images/imagen2.png', '\$75,80 US', 'Sillas de Comedor'),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildProductCard(context, 'assets/images/imagen3.png', '\$59,99 US','Silla Gamer'),
                    _buildProductCard(context, 'assets/images/Captura2.PNG', '\$42,50 US','Sillas Clasicas'),
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

 Widget _buildProductCard(BuildContext context, String imagePath, String price, String productName) {
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
          productName,
          style: const TextStyle(
            fontSize: 18,
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
            Navigator.pushNamed(context, "/for_opagos");
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

// // import 'package:flutter/material.dart';

// class Sesion extends StatelessWidget {
//   const Sesion({Key? key}) : super(key: key);

  


  

}