/*Exercicio 1  - ativ4
Aluna Beatriz Queruvim Batista BP-3016374
1. Implemente um Form como na imagem abaixo. Busque mesclar Column com Row para obter o layout apresentado. Mostre em um SnackBar os dados inseridos quando o botão Submit for pressionado.
*/

//Conforme o slide da aula

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
      home: MyFormPage(),
    );
  }
}

class MyFormPage extends StatefulWidget {
  const MyFormPage({super.key});

  @override
  State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameCtrl = TextEditingController();
  final TextEditingController phoneCtrl = TextEditingController();
  final TextEditingController dobCtrl = TextEditingController();

  @override
  void dispose() {
    nameCtrl.dispose();
    phoneCtrl.dispose();
    dobCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          title: const Text('Flutter Form Demo'),
        ),
        body: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: nameCtrl,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Insert yor name',
                  labelText: 'Name',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please, insert yor name';
                  }

                  return null;
                },
                onSaved: (nameCtrl) {},
              ),

              const SizedBox(height: 10),
              TextFormField(
                controller: phoneCtrl,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  icon: Icon(Icons.phone),
                  hintText: 'Insert yor phone',
                  labelText: 'Phone',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please, insert yor phone';
                  }
                  return null;
                },
                onSaved: (phoneCtrl) {},
              ),

              const SizedBox(height: 10),
              TextFormField(
                controller: dobCtrl,
                decoration: const InputDecoration(
                  icon: Icon(Icons.calendar_month),
                  hintText: 'Insert yor date of birth',
                  labelText: 'Dob',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please, insert yor date of birthday';
                  }
                  return null;
                },
                onSaved: (dobCtrl) {},
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    textStyle: const TextStyle(fontSize: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  onPressed: () {
                    _formKey.currentState!.save();
                    if (_formKey.currentState!.validate()) {
                      final snackBar = SnackBar(
                        content: Text(
                          "Name: ${nameCtrl.text}\n"
                          "Phone: ${phoneCtrl.text}\n"
                          "Dob: ${dobCtrl.text}",
                        ),
                        backgroundColor: const Color.fromARGB(
                          255,
                          88,
                          147,
                          248,
                        ),
                        duration: const Duration(seconds: 4),
                      );

                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                    ;
                  },
                  child: const Text(
                    'Submit',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}

//Versao sem usar o forms: ------- Entendimento errado do eneunciado, mas ao menos explorei os componentes sem usar o forms. E depois fiz usando o forms pra ataividade ficar correta! ---------
/* 
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
      home: MyFormPage(),
    );
  }
}

class MyFormPage extends StatefulWidget {
  const MyFormPage({super.key});

  @override
  State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameCtrl = TextEditingController();
  final TextEditingController phoneCtrl = TextEditingController();

  DateTime? _dataSelecionada;

  @override
  void dispose() {
    nameCtrl.dispose();
    phoneCtrl.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(2000, 1), // valor inicial
      firstDate: DateTime(1900), // data mínima
      lastDate: DateTime.now(), // hoje como limite
    );

    if (picked != null && picked != _dataSelecionada) {
      setState(() {
        _dataSelecionada = picked;
      });
    }
  }

  String _formatarData(DateTime data) {
    return "${data.day.toString().padLeft(2, '0')}/"
           "${data.month.toString().padLeft(2, '0')}/"
           "${data.year}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulário com validação'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                controller: nameCtrl,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Digite seu nome',
                  labelText: 'Name',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira seu nome';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: phoneCtrl,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  icon: Icon(Icons.phone),
                  hintText: 'Digite seu telefone',
                  labelText: 'Phone',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira seu telefone';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Icon(Icons.calendar_month),
                  const SizedBox(width: 10),
                  Text(
                    _dataSelecionada != null
                        ? 'Dob: ${_formatarData(_dataSelecionada!)}'
                        : 'Data de nascimento não selecionada',
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () => _selectDate(context),
                    child: const Text('Selecionar Data'),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      final snackBar = SnackBar(
                        content: Text(
                          'Name: ${nameCtrl.text}\n'
                          'Phone: ${phoneCtrl.text}\n'
                          'Dob: ${_dataSelecionada != null ? _formatarData(_dataSelecionada!) : "Não selecionada"}',
                        ),
                        duration: const Duration(seconds: 4),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/
