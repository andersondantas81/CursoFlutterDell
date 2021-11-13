import 'package:flutter/material.dart';

class Exercicio2_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exercício 2.3",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.blue,
            child: Center(child: Text("Texto dentro do container")),
          ),
        ),
      ),
    );
  }
}