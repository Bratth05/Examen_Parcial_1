import 'package:flutter/material.dart';

class NoticiasPage extends StatelessWidget {
  const NoticiasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Noticias de Programación'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          Notificaciones(
            titulo: 'Nueva versión de Python',
            fecha: '01 - Diciembre - 2023',
            contenido:
                'Python 4.0 ha sido lanzado con nuevas y emocionantes características.',
          ),
          SizedBox(height: 16.0),
          Notificaciones(
            titulo: 'Conferencia de Flutter',
            fecha: '12 de noviembre, 2023',
            contenido:
                'No te pierdas la conferencia anual de Flutter donde se presentarán las últimas actualizaciones y características.',
          ),
          Notificaciones(
            titulo: 'Hackathon de programación',
            fecha: '30 de noviembre, 2023',
            contenido:
                'Participa en nuestro hackathon de programación y demuestra tus habilidades de codificación.',
          ),
          SizedBox(height: 16.0),
          Notificaciones(
            titulo: 'Curso de Inteligencia Artificial',
            fecha: '22 de noviembre, 2023',
            contenido:
                'Inscríbete en nuestro curso de Inteligencia Artificial y aprende sobre las últimas tendencias en IA.',
          ),
        ],
      ),
    );
  }
}

class Notificaciones extends StatelessWidget {
  final String titulo;
  final String fecha;
  final String contenido;

  const Notificaciones({
    required this.titulo,
    required this.fecha,
    required this.contenido,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titulo,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              fecha,
              style: const TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              contenido,
              style: const TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
