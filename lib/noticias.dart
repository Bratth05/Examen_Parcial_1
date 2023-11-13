import 'package:flutter/material.dart';

class NoticiasPage extends StatelessWidget {
  const NoticiasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Noticias Académicas'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          Notificaciones(
            titulo: 'Evento de graduacion',
            fecha: '31 de noviembre, 2023',
            contenido:
                ' Te invitamos a nuestros proximos actos de graduacion este 2023!',
          ),
          SizedBox(height: 16.0),
          Notificaciones(
            titulo: 'Conferencia sobre emprendimiento',
            fecha: '12 de noviembre, 2023',
            contenido:
                'No te pierdas la conferencia sobre la importancia del emprendimiento en nuestro pais.',
          ),
          Notificaciones(
            titulo: 'Matriculo abierta',
            fecha: '30 de noviembre, 2023',
            contenido:
                'Se le informa a toda la comunidad CEUTEC y demas que la matricula para el proximo periodo academico se encuentra disponible.',
          ),
          SizedBox(height: 16.0),
          Notificaciones(
            titulo: 'Feria de Tecnologia',
            fecha: '22 de noviembre, 2023',
            contenido:
                'Muestra tus habilidades y conocimientos sobre el maravilloso mundo de la tecnologia, esta es tu oportunidad.',
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
