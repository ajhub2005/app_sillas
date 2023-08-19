import 'package:flutter/material.dart';

class FormularioDePago extends StatelessWidget {
  const FormularioDePago({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Método de pagos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildPaymentMethodImage('assets/images/Paypal.png'),
                _buildPaymentMethodImage('assets/images/Visa.png'),
                _buildPaymentMethodImage('assets/images/Mastercard.png'),
                _buildPaymentMethodImage('assets/images/AmericanExpress.png'),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Acción al presionar el botón de pago
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                textStyle: const TextStyle(
                  fontSize: 16,
                ),
              ),
              child: const Text('Realizar pago'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navegar a la otra vista aquí
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OtraVista()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                textStyle: const TextStyle(
                  fontSize: 16,
                ),
              ),
              child: const Text('Ir a otra vista'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentMethodImage(String imagePath) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Image.asset(imagePath, width: 100, height: 50),
    );
  }
}

class OtraVista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Otra Vista'),
      ),
      body: const Center(
        child: Text('Esta es otra vista'),
      ),
    );
  }
}


