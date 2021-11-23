import 'package:mobx/mobx.dart';

part 'contador_controller.g.dart';

class TarefaController = TarefaControllerBase with _$TarefaController;

abstract class TarefaControllerBase with Store {

  @observable
  ObservableList<String> tarefas = ObservableList.of([]);

  @action
  void adicionaTarefa(){
    tarefas.add("Uma tarefa adicionada");
  }

  @action
  void deletarTarefa(){
    tarefas.removeLast();
  }

}