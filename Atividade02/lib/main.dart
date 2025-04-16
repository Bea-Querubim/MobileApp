import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /* // Forma explorando outras possibilidades
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        //const MyHomePage(title: 'Flutter is Fun!'),
        appBar: AppBar(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          title: Text("Flutter is Fun!"),
        ),
        body: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: 50),
              Stack(
                children: [
                  //inicio do quadrado laranja
                  Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(color: Colors.deepOrange),
                  ),
                  const Positioned(
                    top: 10,
                    left: 7,
                    child: Text("Hi Mom 🐣"),
                  ), //posição do texto
                ],
              ),
              //Stack(children: []),
            ],
          ),
        ),
      ),
    );
  }*/

  //seguindo o video
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          title: Text("Flutter is Fun!"),
        ),
        body: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 251, 87, 37),
          ),
          margin: EdgeInsets.fromLTRB(65, 65, 0, 0),
          child: Text("Hi Mom 🐣", textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
