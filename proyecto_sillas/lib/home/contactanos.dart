import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soporte y Contacto'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Image(
              image: AssetImage('assets/images/imagen1.png'), 
              height: 100,
            ),
            const SizedBox(height: 20),
            const Text(
              'Envíanos tu opinión',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            TextFormField(
              maxLines: 5,
              decoration: const InputDecoration(
                labelText: 'Opinión del servicio',
                hintText: 'Escribe aquí tu opinión',
                border: OutlineInputBorder(),
              ),
              // Puedes guardar el contenido del campo en una variable para usarlo posteriormente
              // onChanged: (value) {
              //   // Aquí puedes guardar el contenido del campo en una variable si es necesario
              // },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Aquí puedes realizar acciones al enviar la opinión
                // Por ejemplo, enviarla a un servidor o mostrar un mensaje de éxito.
              },
              child: const Text('Enviar Opinión'),
            ),
            const SizedBox(height: 20),
            const Text(
              '¡Agradecemos tu opinión!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}


