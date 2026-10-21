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
                    CardWidget(title: 'Inicio', icon: Icons.home),
                    CardWidget(title: 'Perfil', icon: Icons.person),
                    CardWidget(title: 'Ajustes', icon: Icons.settings),
                  ],
                ),
              ),
              // Fila 2
              Expanded(
                child: Row(
                  children: [
                    CardWidget(title: 'Notificaciones', icon: Icons.notifications),
                    CardWidget(title: 'Mensajes', icon: Icons.email),
                    CardWidget(title: 'Favoritos', icon: Icons.favorite),
                  ],
                ),
              ),
              // Fila 3
              Expanded(
                child: Row(
                  children: [
                    CardWidget(title: 'Cámara', icon: Icons.photo_camera),
                    CardWidget(title: 'Música', icon: Icons.music_note),
                    CardWidget(title: 'Ubicación', icon: Icons.location_on),
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

class CardWidget extends StatelessWidget {
  final String title;
  final IconData icon;

  const CardWidget({
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