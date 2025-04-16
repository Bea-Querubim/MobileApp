import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const String titleApp = "My Home Page";
    return MaterialApp(
      title: titleApp,
      home: Scaffold(
        appBar: AppBar(title: const Text(titleApp), centerTitle: true),
        body: Center(
          child: Column(
            children: [
              Text('Hello, World!'),
              SizedBox(height: 70),
              ElevatedButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blueAccent),
                onPressed: () {
                  print('Clicou...');
                },
                child: Text('Botao', style: TextStyle(color: Colors.white)),
              ) /*,
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blueAccent),
                onPressed: () {
                  print('Clicou!');
                },
                child: Text('Botao', style: TextStyle(color: Colors.white)),
              ),*/,
            ],
          ),
        ),
      ),
    );
  }
}
