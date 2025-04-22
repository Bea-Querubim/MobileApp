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
      home: const TelaAzul(),
    );
  }
}

class TelaAzul extends StatelessWidget {
  const TelaAzul({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tela com Tema Azul')),
      body: Center(child: Text('Tema Azul')),
    );
  }
}
