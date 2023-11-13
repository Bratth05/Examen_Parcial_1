import 'package:flutter/material.dart';
import 'package:flutter_examen_1/cambioMoneda.dart';
import 'package:flutter_examen_1/homepage.dart';
import 'package:flutter_examen_1/listaTareas.dart';
import 'package:flutter_examen_1/noticias.dart';
import 'package:flutter_examen_1/podcast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CEUTEC',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePages(),
        '/noticias': (context) => const NoticiasPage(),
        '/cambioMoneda': (context) => CambioMonedaPage(),
        '/listaTareas': (context) => const ListaTareasPage(),
        '/podcast': (context) => const PodcastPage(),
      },
    );
  }
}
