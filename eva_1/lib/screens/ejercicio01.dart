import 'package:flutter/material.dart';

class Ejercicio01Screen extends StatefulWidget {
  const Ejercicio01Screen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Ejercicio01ScreenState createState() => _Ejercicio01ScreenState();
}

class _Ejercicio01ScreenState extends State<Ejercicio01Screen> {
  final TextEditingController _alturaController = TextEditingController();
  final TextEditingController _pesoController = TextEditingController();
  String _resultado = '';

  void calcularIMC() {
    final altura = double.tryParse(_alturaController.text);
    final peso = double.tryParse(_pesoController.text);

    if (altura != null && peso != null) {
      final imc = peso / (altura * altura);
      String interpretacion;

      if (imc < 18.5) {
        interpretacion = 'Bajo peso';
      } else if (imc < 25) {
        interpretacion = 'Peso normal';
      } else if (imc < 30) {
        interpretacion = 'Sobrepeso';
      } else {
        interpretacion = 'Obesidad';
      }

      setState(() {
        _resultado = 'IMC: ${imc.toStringAsFixed(2)} - $interpretacion';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calcular IMC'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _alturaController,
              decoration: const InputDecoration(labelText: 'Altura (m)'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _pesoController,
              decoration: const InputDecoration(labelText: 'Peso (kg)'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: calcularIMC,
              child: const Text('Calcular IMC'),
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
