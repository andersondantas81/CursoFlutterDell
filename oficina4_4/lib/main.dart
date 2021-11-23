import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'contador_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Exercício 4.4 - Lista de tarefas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final ButtonStyle style =
  ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

  TarefaController tarefaController = TarefaController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Observer(
                builder: (_) => ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (_, i) => ListTile(
                    title: Text(tarefaController.tarefas.toList()[i]),
                  ),
                  itemCount: tarefaController.tarefas.toList().length,
                )
            ),
            Observer(builder: (context) {
              return Row(
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
              );
            }),
          ],
        ),
      ),
    );
  }

}
