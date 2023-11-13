import 'package:flutter/material.dart';

class ListaTareasPage extends StatelessWidget {
  const ListaTareasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Tareas'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          ListTareas(
            nombre: 'Matemáticas',
            descripcion: 'Repasar los temas de cálculo y álgebra',
            fecha: '2023-11-15',
            url: 'https://portal.unitec.edu/',
          ),
          SizedBox(height: 16.0),
          ListTareas(
            nombre: 'Logica',
            descripcion: 'Leer los capítulos 5 y 6',
            fecha: '2023-11-20',
            url: 'https://portal.unitec.edu/',
          ),
          SizedBox(height: 16.0),
          ListTareas(
            nombre: 'Proyecto de ciencias',
            descripcion: 'Completar el informe del proyecto de Programacion',
            fecha: '2023-11-30',
            url: 'https://portal.unitec.edu/',
          ),
          SizedBox(height: 16.0),
          ListTareas(
            nombre: 'Presentación',
            descripcion: 'Crear diapositivas sobre la etica Informatica',
            fecha: '2023-12-01',
            url: 'https://portal.unitec.edu/',
          ),
          SizedBox(height: 16.0),
          ListTareas(
            nombre: 'Práctica',
            descripcion:
                'Resolver los ejercicios de la plataforma de programación',
            fecha: '2023-12-05',
            url: 'https://portal.unitec.edu/',
          ),
        ],
      ),
    );
  }
}

class ListTareas extends StatelessWidget {
  final String nombre;
  final String descripcion;
  final String fecha;
  final String url;

  const ListTareas({
    required this.nombre,
    required this.descripcion,
    required this.fecha,
    required this.url,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  nombre,
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    const Icon(Icons.date_range, color: Colors.grey),
                    SizedBox(width: 4.0),
                    Text(
                      fecha,
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(width: 4.0),
                    Icon(Icons.link, color: Colors.blue),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Text(
              descripcion,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.star, color: Colors.yellow),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
