import 'package:mobx/mobx.dart';

part 'OperacaoMatematica.g.dart';

class OperacaoMatematica = OperacaoMatematicaBase with _$OperacaoMatematica;

abstract class OperacaoMatematicaBase with Store {
  @observable
  double _primeiroNumero = null;
  @observable
  double _segundoNumero = null;
  @observable
  String _operacaoEscolhida = null;
  @observable
  double _resultado = null;

  @action
  double getPrimeiroNumero() {
    return this._primeiroNumero;
  }
  @action
  void setPrimeiroNumero (double primeiroNumero){
    this._primeiroNumero = primeiroNumero;
  }

  @action
  double getSegundoNumero() {
    return this._segundoNumero;
  }
  @action
  void setSegundoNumero (double segundoNumero){
    this._segundoNumero = segundoNumero;
  }

  @action
  String getOperacaoEscolhida() {
    return this._operacaoEscolhida;
  }
  @action
  void setOperacaoEscolhida (String operacaoEscolhida){
    this._operacaoEscolhida = operacaoEscolhida;
  }

  @action
  double getResultado() {
    return this._resultado;
  }
  @action
  void setResultado (double resultado){
    this._resultado = resultado;
  }

}