
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: GridPage());
  }
}

class GridPage extends StatelessWidget {
  final List<String> imagens = [
    'https://picsum.photos/200/200?1',
    'https://picsum.photos/200/200?2',
    'https://picsum.photos/200/200?3',
    'https://picsum.photos/200/200?4',
    'https://picsum.photos/200/200?5',
    'https://picsum.photos/200/200?6',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Grid de Imagens')),
      body: GridView.count(
        crossAxisCount: 2,
        children: imagens
            .map(
              (url) => Container(
                margin: const EdgeInsets.all(8),
                child: Image.network(url, fit: BoxFit.cover),
              ),
            )
            .toList(),
      ),
    );
  }
}
