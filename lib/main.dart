import 'package:flutter/material.dart';

void main() => runApp(const AppParisina());

class AppParisina extends StatelessWidget {
  const AppParisina({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LasTelas(),
    );
  }
} // Fin Clase AppParisina

class LasTelas extends StatelessWidget {
  const LasTelas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF8B0000), // Rojo Oscuro
        elevation: 1,
        leading: const Icon(
          Icons.architecture, // Icono de aguja/herramienta
          color: Colors.white,
        ),
        title: const Text(
          'Parisina De La Rosa',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.checkroom), // Ropa
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.content_cut), // Tijeras
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.texture), // Hilo
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      
      // --- CUERPO CON TARJETAS ---
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _crearTarjeta(
            'Hilos de Seda',
            'Disponibilidad: Alta',
            'https://raw.githubusercontent.com/DeLaRosaRojas/Imagenes-para-Flutter-6to-I-11-Feb-2026-/refs/heads/main/tela1.png',
          ),
          _crearTarjeta(
            'Botones Vintage',
            'Disponibilidad: Media',
            'https://raw.githubusercontent.com/DeLaRosaRojas/Imagenes-para-Flutter-6to-I-11-Feb-2026-/refs/heads/main/tela2.png',
          ),
          _crearTarjeta(
            'Encajes Finos',
            'Disponibilidad: Pocas piezas',
            'https://raw.githubusercontent.com/DeLaRosaRojas/Imagenes-para-Flutter-6to-I-11-Feb-2026-/refs/heads/main/tela3.png',
          ),
          _crearTarjeta(
            'Telas de Algodón',
            'Disponibilidad: Agotado',
            'https://raw.githubusercontent.com/DeLaRosaRojas/Imagenes-para-Flutter-6to-I-11-Feb-2026-/refs/heads/main/tela5.png',
          ),
        ],
      ),
    ); // Fin Scaffold
  }

  // Widget auxiliar para las tarjetas
  Widget _crearTarjeta(String titulo, String subtitulo, String urlImagen) {
    return Card(
      color: const Color(0xFFFFEBEE), // Rojo Muy Claro para fondo
      elevation: 8,
      margin: const EdgeInsets.only(bottom: 16),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage: NetworkImage(urlImagen),
        ),
        title: Text(
          titulo,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          subtitulo,
          style: const TextStyle(color: Colors.black87),
        ),
        trailing: const Icon(
          Icons.favorite,
          color: Color(0xFFB71C1C), // Rojo Fuerte
        ),
      ),
    );
  }
} // Fin Clase LasTelas