import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Center(
              child: Column(


                  children: <Widget>[
                    Center(child: Text("Botões", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24))),
                    Center(child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [Botao(color: Colors.orange, label: "Botão base", height: 80, width: 200,), SizedBox(width: 6), BotaoVerde(label: "Botão verde", height: 80, width: 200,), SizedBox(width: 6), BotaoAzul()])),
                    SizedBox(height: 6),
                    Center(child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [BotaoArredondado(color: Colors.orange, label: "Botão Arredondado base", height: 80,  width: 350,), SizedBox(width: 6), BotaoArredondadoVerde(label: "Botão arredondado verde", height: 80,  width: 350,)])),
                    SizedBox(height: 6),
                    Center(child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [BotaoArredondado(color: Colors.yellowAccent, label: "Botão Arredondado base", height: 80,  width: 400,), SizedBox(width: 6), BotaoComIcone(color: Colors.deepPurpleAccent, label: "Botão com ícone base", height: 80,  width: 400)])),
                    SizedBox(height: 6),
                    Center(child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [BotaoVermelhoComIcone(color: Colors.red, label: "Botão vervemlho do ícone", height: 80,  width: 500,)])),
                    SizedBox(height: 6),
                    Center(child: Text("Textos", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24))),
                    SizedBox(height: 6),
                    Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [Textos(texto: "Um texto base", tamanho: 12, tipo: Tipo.NORMAL,)]),
                    SizedBox(height: 6),
                    Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [Textos(texto: "Um texto base pequeno", tamanho: 6, tipo: Tipo.NORMAL,)]),
                    SizedBox(height: 6),
                    Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [Textos(texto: "Um texto de tamanho médio", tamanho: 14, tipo: Tipo.NORMAL,)]),
                    SizedBox(height: 6),
                    Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [Textos(texto: "Um texto grande", tamanho: 24, tipo: Tipo.NORMAL,)]),
                    SizedBox(height: 6),
                    Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [Textos(texto: "Um texto gigante", tamanho: 32, tipo: Tipo.NORMAL,)]),
                    SizedBox(height: 6),
                    Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [Textos(texto: "Um texto em negrito", tamanho: 18, tipo: Tipo.NEGRITO,)]),
                    SizedBox(height: 6),
                    Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [Textos(texto: "Um texto em itálico", tamanho: 18, tipo: Tipo.ITALICO,)]),
                    SizedBox(height: 6),
                  ]
          ),
      ),
    ),
        ),
  )));
}

class BotaoVermelhoComIcone extends StatelessWidget {
  BotaoVermelhoComIcone({required this.color, required this.label, required this.height, required this.width});

  final String label;
  final Color color;
  double height;
  double width;

  @override
  Widget build(BuildContext context) {

    return Container(
      height: height,
      width: width,
      color: color,
      padding: EdgeInsets.all(10),
      child: Center(child: Row(children:[
        IconButton(
          icon: const Icon(Icons.settings_outlined,),
          tooltip: 'Settings',
          onPressed: () {},
        ),
        Text('$label', style: TextStyle(fontSize: 32),)])),
    );
  }
}

class Botao extends StatelessWidget {
  Botao({required this.color, required this.label, required this.height, required this.width});

  final String label;
  final Color color;
  double height;
  double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: color,
      child: Center(child: Text('$label'),),
    );
  }
}

class BotaoArredondado extends StatelessWidget {
  BotaoArredondado({required this.color, required this.label, required this.height, required this.width});

  final String label;
  final Color color;
  double height;
  double width;

  @override
  Widget build(BuildContext context) {

    return Container(
      height: height,
      width: width,
      decoration: new BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(40.0),
        )
      ),
      child: Center(child: Text('$label')),
    );
  }
}

class BotaoComIcone extends StatelessWidget {
  BotaoComIcone({required this.color, required this.label, required this.height, required this.width});

  final String label;
  final Color color;
  double height;
  double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: color,
      padding: EdgeInsets.all(10),
      child: Center(child: Row(children:[
        IconButton(
          icon: const Icon(Icons.group),
          tooltip: 'Gurupo de usuários',
          onPressed: () {},
        ),
        Text('$label', style: TextStyle(fontSize: 32),)])),
    );
  }
}

class BotaoArredondadoVerde extends BotaoArredondado {
  BotaoArredondadoVerde({required this.label, required this.height, required this.width}) : super(color: Colors.green, label: '$label', height: height, width: width);
  String label;
  double height;
  double width;

}

class BotaoVerde extends Botao {
  BotaoVerde({required this.label, required this.height, required this.width}) : super(color: Colors.green, label: '$label', height: height, width: width);
  String label;
  double height;
  double width;
}

class BotaoAzul extends Botao {
  BotaoAzul() : super(color: Colors.blue, label: "Botão azul", height: 80, width: 200);

}

class Textos extends StatelessWidget {

  Textos({required this.texto, required this.tamanho, required this.tipo});

  String texto;
  double tamanho;
  Tipo tipo;
  @override
  Widget build(BuildContext context) {
    switch(tipo){
      case Tipo.NEGRITO:
        return Text(
          '$texto',
          style: TextStyle(fontSize: tamanho, fontWeight: FontWeight.bold),
        );
        break;
      case Tipo.NORMAL:
        return Text(
          '$texto',
          style: TextStyle(fontSize: tamanho, fontWeight: FontWeight.normal),
        );
        break;
      case Tipo.ITALICO:
        return Text(
          '$texto',
          style: TextStyle(fontSize: tamanho, fontStyle: FontStyle.italic),
        );
        break;
      default :
        return Text(
          '$texto',
          style: TextStyle(fontSize: tamanho, fontWeight: FontWeight.normal),
        );
        break;

    }
  }
  
}

enum Tipo {
  NORMAL, NEGRITO, ITALICO
}




