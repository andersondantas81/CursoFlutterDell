import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:oficina_aula4_3/controller/contador_controller.dart';

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

class Calculadora extends StatelessWidget {
  ContadorController contadorController = ContadorController();

  int primeiroNumero;
  int segundoNumero;
  String operacaoEscolhida;
  double resultado;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Oicina Aula 4.3 flutter Lead',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Observer(
                builder: (context) {
                  return Column(
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
                          contadorController.primeiroNumero != null
                              ? Text(
                            contadorController.primeiroNumero.toString(),
                            style: TextStyle(fontSize: 28),
                          )
                              : SizedBox.shrink(),
                          contadorController.operacaoEscolhida != null
                              ? Text(
                            contadorController.operacaoEscolhida,
                            style: TextStyle(fontSize: 28),
                          )
                              : SizedBox.shrink(),
                          contadorController.segundoNumero != null
                              ? Text(
                            contadorController.segundoNumero.toString(),
                            style: TextStyle(fontSize: 28),
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
                          contadorController.resultado != null
                              ? Text(
                            contadorController.resultado.toStringAsFixed(2),
                            style: TextStyle(fontSize: 28),
                          )
                              : SizedBox.shrink(),
                        ],
                      ),
                    ],
                  );
                }
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool todasOpcoesForamEscolhidas() {
    return contadorController.primeiroNumero != null &&
        contadorController.segundoNumero != null &&
        contadorController.operacaoEscolhida != null;
  }

  void onClickBotao() {
    contadorController.calcular();
  }

  void onClickBotaoZerar() {
    contadorController.primeiroNumero = null;
    contadorController.segundoNumero = null;
    contadorController.operacaoEscolhida = null;
    contadorController.resultado = null;
  }

  void onPrimeiroNumeroEscolhido(int numero) {
    contadorController.primeiroNumero = numero;
  }

  void onSegundoNumeroEscolhido(int numero) {
    contadorController.segundoNumero = numero;
  }

  void onOperacaoEscolhida(String operacao) {
    contadorController.operacaoEscolhida = operacao;
  }
}

class BotaoZerar extends StatelessWidget {
  BotaoZerar(this.onClickBotao);

  final VoidCallback onClickBotao;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
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
    );
  }
}

class BotaoCalcular extends StatelessWidget {
  BotaoCalcular(this.onClickBotao);

  final VoidCallback onClickBotao;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
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
    );
  }
}

class Operacoes extends StatelessWidget {
  Operacoes(this.onOperacaoEscolhida);

  final Function(String) onOperacaoEscolhida;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
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
    );
  }
}

class Numeros extends StatelessWidget {
  Numeros(this.onNumeroEscolhido);

  final Function(int) onNumeroEscolhido;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: getNumeros(),
    );
  }

  List<Widget> getNumeros() {
    List<Widget> numeros = [];

    for (int i = 0; i < 10; i++) {
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
