import 'package:flutter/material.dart';

class Ejercicio02Screen extends StatefulWidget {
  const Ejercicio02Screen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Ejercicio02ScreenState createState() => _Ejercicio02ScreenState();
}

class _Ejercicio02ScreenState extends State<Ejercicio02Screen> {
  final TextEditingController _velocidadController = TextEditingController();
  String _resultado = '';

  void calcularDistancia() {
    final velocidad = double.tryParse(_velocidadController.text);

    if (velocidad != null) {
      final distancia = velocidad * 100; // t = 100 segundos
      setState(() {
        _resultado = 'Distancia: ${distancia.toStringAsFixed(2)} metros';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calcular Distancia'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _velocidadController,
              decoration: const InputDecoration(labelText: 'Velocidad (m/s)'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: calcularDistancia,
              child: const Text('Calcular Distancia'),
            ),
            const SizedBox(height: 20),
            Text(
              _resultado,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
