import 'package:flutter/material.dart';

class ColumnsRowsScreen extends StatelessWidget {
  const ColumnsRowsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filas y Columnas'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Fila 1
              Expanded(
                child: Row(
                  children: [
                    Card(title: 'Inicio', icon: Icons.home),
                    Card(title: 'Perfil', icon: Icons.person),
                    Card(title: 'Ajustes', icon: Icons.settings),
                  ],
                ),
              ),
              // Fila 2
              Expanded(
                child: Row(
                  children: [
                    Card(title: 'Notificaciones', icon: Icons.notifications),
                    Card(title: 'Mensajes', icon: Icons.email),
                    Card(title: 'Favoritos', icon: Icons.favorite),
                  ],
                ),
              ),
              // Fila 3
              Expanded(
                child: Row(
                  children: [
                    Card(title: 'Cámara', icon: Icons.photo_camera),
                    Card(title: 'Música', icon: Icons.music_note),
                    Card(title: 'Ubicación', icon: Icons.location_on),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  final String title;
  final IconData icon;

  const Card({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: Colors.teal),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}