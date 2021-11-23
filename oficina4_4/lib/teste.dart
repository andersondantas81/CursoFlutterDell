/*
import 'package:exercicio4_4/contador_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter tarefas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final ButtonStyle style =
  ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

  final TarefaController tarefaController = TarefaController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Observer(
          builder: (_) =>
              ListView.builder(
                itemBuilder: (_, i) => ListTile(
                  title: Text(tarefaController.tarefas.toList()[i]),
                ),
                itemCount: tarefaController.tarefas.toList().length,
              ),
          Row(
            children: <Widget>[
              ElevatedButton(
                style: style,
                onPressed: tarefaController.adicionaTarefa,
                child: Icon(Icons.add),
              ),
              const SizedBox(
                width: 8,
              ),
              ElevatedButton(
                style: style,
                onPressed: tarefaController.deletarTarefa,
                child: Icon(Icons.delete),
                //child: const Text('Deletar'),
              ),
            ],
          ),
          ],
        ),
      ),
    ),
    );
  }
}
*/

/* floatingActionButton: FloatingActionButton(
          onPressed: tarefaController.adicionaTarefa,
          tooltip: "Adicionar",
          child: Icon(Icons.add,),
        )*//*


@override
void initState() {
  reaction(
          (_) => tarefaController.tarefas.length,
          (_) => print('Quatidade de Tarefas: ${tarefaController.tarefas.length}'));
  when(
        (_) => tarefaController.tarefas.length == 5,
        () => showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Você chegou em 5 tarefas'),
      ),
    ),
  );
  super.initState();
}
*/
