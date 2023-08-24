import 'package:flutter/material.dart';

class FormularioMasterCard extends StatefulWidget {
  const FormularioMasterCard({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FormularioMasterCardState createState() => _FormularioMasterCardState();
}

class _FormularioMasterCardState extends State<FormularioMasterCard> {
  final _formKey = GlobalKey<FormState>();


  // ignore: unused_field, prefer_final_fields
  String _nombres = '';
  // ignore: unused_field, prefer_final_fields
  String _apellido = '';
  // ignore: prefer_final_fields, unused_field
  String _telefono = '';
  // ignore: prefer_final_fields, unused_field
  String _direccion = '';
  // ignore: unused_field, prefer_final_fields
  String _identificacion = '';
  // ignore: unused_field
  String _numeroTarjeta= '';
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
                  _nombres = value;
                },
              ),
             const SizedBox(height: 10),

                TextFormField(
                decoration: const InputDecoration(labelText: 'Apellidos'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese sus Apellidos';
                  }
                  return null;
                },
                onChanged: (value) {
                  _apellido = value;
                },
              ),
             const SizedBox(height: 10),
                TextFormField(
                decoration: const InputDecoration(labelText: 'Telefono'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese su numero de telefono';
                  }
                  return null;
                },
                onChanged: (value) {
                  _telefono = value;
                },
              ),
             const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Direccion'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese su direccion(opcional)';
                  }
                  return null;
                },
                onChanged: (value) {
                  _direccion = value;
                },
              ),
             const SizedBox(height: 10),
               TextFormField(
                decoration: const InputDecoration(labelText: 'Identificacion'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese su identificacion';
                  }
                  return null;
                },
                onChanged: (value) {
                  _identificacion = value;
                },
              ),
             const SizedBox(height: 10),
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
             const SizedBox(height: 10),
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
             const SizedBox(height: 50),
              // ElevatedButton(
              //   onPressed: _submitForm,
              //   child: const Text('Realizar Pago'),
              // ),
              Center(
                
                
                 child: ElevatedButton(
            onPressed: () {
              
              // _submitForm();
              // Simular proceso de pago exitoso
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Compra Exitosa'),
                    content: const Text('Gracias por tu compra'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          // Vaciar el carrito después de la compra exitosa
                          // (Puedes hacer esto con setState o utilizando un estado global)
                        },
                    
                        child: const Text('Aceptar'),
                      ),
                    ],
                  );
                  
                },
              );
            },     style: ElevatedButton.styleFrom(
                         padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 24), // Ajusta el padding
                  ),
            child: const Text('Realizar Pago'),
          ),

              )
             
            ],
          ),
        ),
      ),
    );
  }
}