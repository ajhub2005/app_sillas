import 'package:flutter/material.dart';

class SeccionEspecial extends StatelessWidget {
  const SeccionEspecial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seccion especial'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 207, 223, 231), // Cambia el color de fondo a azul claro
            ),
          ),
        ]     
    ),
    );
  }
}
