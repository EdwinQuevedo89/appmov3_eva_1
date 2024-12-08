import 'package:flutter/material.dart';
import 'screens/prueba.dart';
import 'screens/ejercicio01.dart';
import 'screens/ejercicio02.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(), 
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplicación con Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueGrey),
              child: Text(
                'Menú Principal',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              title: const Text('Prueba'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PruebaScreen()),
                );
              },
            ),
            ListTile(
              title: const Text('Ejercicio01'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Ejercicio01Screen()),
                );
              },
            ),
            ListTile(
              title: const Text('Ejercicio02'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Ejercicio02Screen()),
                );
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Selecciona una opción en el menú lateral.'),
      ),
    );
  }
}
