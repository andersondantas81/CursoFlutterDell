import 'package:mobx/mobx.dart';
part 'contador_controller.g.dart';

class ContadorController = _ContadorControllerBase with _$ContadorController;

abstract class _ContadorControllerBase with Store {
  @observable
  int primeiroNumero = null;
  @observable
  int segundoNumero = null;
  @observable
  String operacaoEscolhida = null;
  @observable
  double resultado = null;

  @action
  void calcular(){
    if (operacaoEscolhida == '+') {
      resultado = (primeiroNumero + segundoNumero).toDouble();
    } else if (operacaoEscolhida == '-') {
      resultado = (primeiroNumero - segundoNumero).toDouble();
    } else if (operacaoEscolhida == '*') {
      resultado = (primeiroNumero * segundoNumero).toDouble();
    } else if (operacaoEscolhida == '/') {
      resultado = primeiroNumero / segundoNumero;
    } else if (operacaoEscolhida == '%') {
      resultado = (primeiroNumero % segundoNumero).toDouble();
    }
  }
}
