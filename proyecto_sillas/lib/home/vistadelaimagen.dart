import 'package:flutter/material.dart';

class VistaDeLaImagen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vista de la Imagen'),
      ),
      body: const Center(
        child: Text('Esta es la vista de la imagen tocada'),
      ),
    );
  }
}