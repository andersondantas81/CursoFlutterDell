import 'package:mobx/mobx.dart';

part 'contador_controller.g.dart';

class ContadorController = ContadorControllerBase with _$ContadorController;

abstract class ContadorControllerBase with Store {
  @observable
  int valor = 0;

  @action
  void incrementa(){
    valor++;
  }
}