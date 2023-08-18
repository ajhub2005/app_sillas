import 'package:flutter/material.dart';

class for_pago extends StatelessWidget {
  const for_pago({Key? key}) : super(key: key);

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
                _buildPaymentMethodImage('assets/images/bbva.PNG'),
                _buildPaymentMethodImage('assets/images/visa.PNG'),
                _buildPaymentMethodImage('assets/images/MASTERCARD.PNG'),
              ],
            ),
          
            const SizedBox(height: 5),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildPaymentMethodImage('assets/images/Paypal.PNG'),
                _buildPaymentMethodImage('assets/images/Americanexpress.PNG'),
                _buildPaymentMethodImage('assets/images/DAVIVIENDA.PNG'),
            const SizedBox(height: 15),
              ]
        ),
          ]
      ),
      ),
    );
  }

  Widget _buildPaymentMethodImage(String imagePath) {
    return Container(
      width: 80,
      height: 50,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Image.asset(imagePath),
    );
  }
}


