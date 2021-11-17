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
      theme: ThemeData(primarySwatch: Colors.blue,),
      home: MyHomePage(title: 'Flutter Tarefas Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  final TarefaController tarefaController = TarefaController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) => ListView.builder(
            itemBuilder: (_, i) => ListTile(
              title: Text(tarefaController.tarefas.toList()[i]),
            ),
          itemCount: tarefaController.tarefas.toList().length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: tarefaController.adicionaTarefa,
        tooltip: "Adicionar",
        child: Icon(Icons.add,),
      )
    );
  }
}

/*
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
