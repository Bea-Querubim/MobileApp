/*Exercicio 3  - ativ4
Aluna Beatriz Querubim Batista BP-3016374

3. Crie a tela da imagem utilizando como raiz da árvore de widgets um MaterialApp e Scaffold.
Para criar a lista de tarefas você deve utilizar também o ListView com o método builder para criar Cards para
mostrar as tarefas. Utilize também CheckBox e ElevatedButton. Ao clicar no FloatingActionButton, faça
aparecer um AlertDialog que apresente a mensagem “Você está no App de Notas de Tarefas”.
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
      home: TaskListPage(),
    );
  }
}

class TaskListPage extends StatefulWidget {
  const TaskListPage({super.key});

  @override
  State<TaskListPage> createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  final List<String> tasks = ['Tarefa 1', 'Tarefa 2', 'Tarefa 3'];
  final List<bool> checked = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('App de Tarefas')),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(tasks[index]),
              trailing: Checkbox(
                value: checked[index],
                onChanged: (value) {
                  setState(() {
                    checked[index] = value!;
                  });
                },
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (_) => const AlertDialog(
              title: Text('Aviso'),
              content: Text('Você está no App de Notas de Tarefas'),
            ),
          );
        },
        child: const Icon(Icons.info),
      ),
    );
  }
}
