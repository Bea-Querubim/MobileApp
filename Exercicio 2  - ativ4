/*Exercicio 2  - ativ4
Aluna Beatriz Queruvim Batista BP-3016374
2. Você sabia que o FloatingActionButton (também conhecido como FAB) pode ser posicionado ao meio de um BottomBarNavigation? 

Verifique que ao selecionar o FAB, novas opções são
apresentadas. Implemente também esse recurso.
*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FabMenuExample(),
    );
  }
}

class FabMenuExample extends StatefulWidget {
  const FabMenuExample({super.key});

  @override
  State<FabMenuExample> createState() => _FabMenuExampleState();
}

class _FabMenuExampleState extends State<FabMenuExample> {
  bool _showFabOptions = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FAB com menu')),
      body: const Center(child: Text('Conteúdo da tela')),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (_showFabOptions) ...[
            FloatingActionButton.small(
              heroTag: 'option1',
              onPressed: () {},
              child: const Icon(Icons.star),
            ),
            const SizedBox(height: 8),
            FloatingActionButton.small(
              heroTag: 'option2',
              onPressed: () {},
              child: const Icon(Icons.settings),
            ),
            const SizedBox(height: 8),
          ],
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _showFabOptions = !_showFabOptions;
              });
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            IconButton(onPressed: null, icon: Icon(Icons.home)),
            IconButton(onPressed: null, icon: Icon(Icons.person)),
          ],
        ),
      ),
    );
  }
}
