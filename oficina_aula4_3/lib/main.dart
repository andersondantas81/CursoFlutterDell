import 'package:calculadora_flutter_dell/controller/controller.dart';
import 'package:calculadora_flutter_dell/model/OperacaoMatematica.dart';
import 'package:flutter/material.dart';
import 'package:calculadora_flutter_dell/model/OperacaoMatematica.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora com MOBX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Calculadora(),
    );
  }
}

final Controller controller =  Controller();

class Calculadora extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora Flutter com MOBX',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                children: <Widget>[
                  Numeros(onPrimeiroNumeroEscolhido),
                  Divider(),
                  Operacoes(onOperacaoEscolhida),
                  Divider(),
                  Numeros(onSegundoNumeroEscolhido),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      BotaoCalcular(
                          todasOpcoesForamEscolhidas() ? onClickBotao : null),
                      BotaoZerar(onClickBotaoZerar)
                    ],
                  ),
                  Divider(),
                  Row(
                    children: <Widget>[
                      Text(
                        'Operação: ',
                        style: TextStyle(fontSize: 28),
                      ),
                controller.operacaoMatematica.getPrimeiroNumero() != null
                          ? Observer(
                            builder: (_) {
                              return Text(
                                controller.operacaoMatematica.getPrimeiroNumero().toString(),
                                style: TextStyle(fontSize: 28),
                              );
                            }
                          )
                          : SizedBox.shrink(),
                      controller.operacaoMatematica.getOperacaoEscolhida() != null
                          ? Observer(
                            builder: (context) {
                              return Text(
                        controller.operacaoMatematica.getOperacaoEscolhida(),
                                  style: TextStyle(fontSize: 28),
                                );
                            }
                          )
                          : SizedBox.shrink(),
                      controller.operacaoMatematica.getSegundoNumero() != null
                          ? Observer(
                            builder: (context) {
                              return Text(
                        controller.operacaoMatematica.getSegundoNumero().toString(),
                                  style: TextStyle(fontSize: 28),
                                );
                            }
                          )
                          : SizedBox.shrink(),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'Resultado: ',
                        style: TextStyle(fontSize: 28),
                      ),
                      controller.operacaoMatematica.getResultado() != null
                          ? Observer(
                            builder: (context) {
                              return Text(
                        controller.operacaoMatematica.getResultado().toStringAsFixed(2),
                                  style: TextStyle(fontSize: 28),
                                );
                            }
                          )
                          : SizedBox.shrink(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool todasOpcoesForamEscolhidas() {
    return controller.operacaoMatematica.getPrimeiroNumero() != null &&
        controller.operacaoMatematica.getSegundoNumero() != null &&
        controller.operacaoMatematica.getOperacaoEscolhida() != null;
  }

  void onClickBotao() {
      if (controller.operacaoMatematica.getOperacaoEscolhida() == '+') {
        controller.operacaoMatematica.setResultado(controller.operacaoMatematica.getPrimeiroNumero() + controller.operacaoMatematica.getSegundoNumero());
      } else if (controller.operacaoMatematica.getOperacaoEscolhida() == '-') {
        controller.operacaoMatematica.setResultado(controller.operacaoMatematica.getPrimeiroNumero() - controller.operacaoMatematica.getSegundoNumero());
      } else if (controller.operacaoMatematica.getOperacaoEscolhida() == '*') {
        controller.operacaoMatematica.setResultado(controller.operacaoMatematica.getPrimeiroNumero() * controller.operacaoMatematica.getSegundoNumero());
      } else if (controller.operacaoMatematica.getOperacaoEscolhida() == '/') {
        controller.operacaoMatematica.setResultado(controller.operacaoMatematica.getPrimeiroNumero() / controller.operacaoMatematica.getSegundoNumero());
      } else if (controller.operacaoMatematica.getOperacaoEscolhida() == '%') {
        controller.operacaoMatematica.setResultado(controller.operacaoMatematica.getPrimeiroNumero() % controller.operacaoMatematica.getSegundoNumero());
      }
  }

  void onClickBotaoZerar() {
    controller.operacaoMatematica.setPrimeiroNumero(null);
    controller.operacaoMatematica.setSegundoNumero(null)  ;
    controller.operacaoMatematica.setOperacaoEscolhida(null);
    controller.operacaoMatematica.setResultado(null);
  }

  void onPrimeiroNumeroEscolhido(double numero) {
    controller.operacaoMatematica.setPrimeiroNumero(numero);
  }

  void onSegundoNumeroEscolhido(double numero) {
    controller.operacaoMatematica.setSegundoNumero(numero);
  }

  void onOperacaoEscolhida(String operacao) {
    controller.operacaoMatematica.setOperacaoEscolhida(operacao);
  }
}

class BotaoZerar extends StatelessWidget {
  BotaoZerar(this.onClickBotao);

  final VoidCallback onClickBotao;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.blue,
      onPressed: onClickBotao,
      child: Text(
        'Zerar',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }
}

class BotaoCalcular extends StatelessWidget {
  BotaoCalcular(this.onClickBotao);

  final VoidCallback onClickBotao;

  @override
  Widget build(BuildContext context) {
        return RaisedButton(
          color: Colors.blue,
          onPressed: onClickBotao,
          child: Text(
            'Calcular',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        );
  }
}

class Operacoes extends StatelessWidget {
  Operacoes(this.onOperacaoEscolhida);

  final Function(String) onOperacaoEscolhida;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        GestureDetector(
          onTap: () => onOperacaoEscolhida('+'),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Text(
                '+',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => onOperacaoEscolhida('-'),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Text(
                '-',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => onOperacaoEscolhida('*'),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Text(
                '*',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => onOperacaoEscolhida('/'),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Text(
                '/',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => onOperacaoEscolhida('%'),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Text(
                '%',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Numeros extends StatelessWidget {
  Numeros(this.onNumeroEscolhido);

  final Function(double) onNumeroEscolhido;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: getNumeros(),
    );
  }

  List<Widget> getNumeros() {
    List<Widget> numeros = [];

    for (double i = 0; i < 10; i++) {
      numeros.add(
        GestureDetector(
          onTap: () => onNumeroEscolhido(i),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Text(
                i.toString(),
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      );
    }
    return numeros;
  }
}
