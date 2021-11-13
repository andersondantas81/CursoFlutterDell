import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  MyWidget({required this.label, required this.valor});
  String label;
  String valor;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          '$label: ',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 6),
        Text(
          '$valor',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ],
    );
  }

}

class Exercicio3_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                MyWidget(label: 'Nome', valor: 'Anderson Dantas'),
                MyWidget(label: 'Email', valor: 'andersonddc@hotmail.com'),
                MyWidget(label: 'Telefone', valor: '85999999999'),
                MyWidget(label: 'Idade', valor: '20')
              ],
            ),
          ),
        )
    );
  }
}