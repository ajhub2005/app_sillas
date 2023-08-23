import 'package:flutter/material.dart';
import 'formulario.dart';

class metododepago extends StatelessWidget {
  const metododepago({Key? key}) : super(key: key);

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
                _buildPaymentMethodContainer(context, 'assets/images/Paypal.png', 'PayPal'),
                _buildPaymentMethodContainer(context, 'assets/images/visa.png', 'Visa'),
                _buildPaymentMethodContainer(context, 'assets/images/MASTERCARD.png', 'MasterCard'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildPaymentMethodContainer(context, 'assets/images/Americanexpress.png', 'American Express'),
                _buildPaymentMethodContainer(context, 'assets/images/DAVIVIENDA.png', 'Davivienda'),
                _buildPaymentMethodContainer(context, 'assets/images/bbva.png', 'BBVA'),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

void _navigateToOtherView(BuildContext context, String paymentMethod) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const FormularioMasterCard()),
  );
}

Widget _buildPaymentMethodContainer(BuildContext context, String imagePath, String paymentMethodName) {
  return GestureDetector(
    onTap: () {
      _navigateToOtherView(context, paymentMethodName); // Abre el formulario de pago
    },
    child: Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Image.asset(imagePath, width: 100, height: 50),
    ),
  );
}

}
