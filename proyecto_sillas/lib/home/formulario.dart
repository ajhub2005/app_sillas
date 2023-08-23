import 'package:flutter/material.dart';

class FormularioMasterCard extends StatefulWidget {
  const FormularioMasterCard({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FormularioMasterCardState createState() => _FormularioMasterCardState();
}

class _FormularioMasterCardState extends State<FormularioMasterCard> {
  final _formKey = GlobalKey<FormState>();


  // ignore: unused_field
  String _Nombres = '';
  // ignore: unused_field
  String _Apellido = '';
  // ignore: unused_field
  String _numeroTarjeta = '';
  // ignore: unused_field
  String _nombreTarjeta = '';
  // ignore: unused_field
  String _fechaExpiracion = '';
  // ignore: unused_field
  String _cvv = '';



  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Aquí puedes realizar acciones con los datos del formulario, como procesar el pago
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulario de Pago'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Nombres'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese su nombre';
                  }
                  return null;
                },
                onChanged: (value) {
                  _numeroTarjeta = value;
                },
              ),
               TextFormField(
                decoration: const InputDecoration(labelText: 'Número de tarjeta'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa el número de tarjeta';
                  }
                  return null;
                },
                onChanged: (value) {
                  _numeroTarjeta = value;
                },
              ),
              TextFormField(
                decoration:const InputDecoration(labelText: 'Nombre en la tarjeta'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa el nombre en la tarjeta';
                  }
                  return null;
                },
                onChanged: (value) {
                  _nombreTarjeta = value;
                },
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration:const InputDecoration(labelText: 'Fecha de expiración (MM/AA)'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor ingresa la fecha de expiración';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        _fechaExpiracion = value;
                      },
                    ),
                  ),
                 const SizedBox(width: 16),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: 'CVV'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor ingresa el CVV';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        _cvv = value;
                      },
                    ),
                  ),
                ],
              ),
             const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitForm,
                child: const Text('Realizar Pago'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}