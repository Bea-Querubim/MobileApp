import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue,
      ),
      home: const TelaComTemaAlternado(),
    );
  }
}

class TelaComTemaAlternado extends StatelessWidget {
  const TelaComTemaAlternado({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        scaffoldBackgroundColor: Colors.yellow,
      ),
      child: Scaffold(
        appBar: AppBar(title: Text('Tema Sobrescrito')),
        body: Center(child: Text('Fundo Amarelo')),
      ),
    );
  }
}
