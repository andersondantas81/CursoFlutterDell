// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contador_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TarefaController on TarefaControllerBase, Store {
  final _$tarefasAtom = Atom(name: 'TarefaControllerBase.tarefas');

  @override
  ObservableList<String> get tarefas {
    _$tarefasAtom.reportRead();
    return super.tarefas;
  }

  @override
  set tarefas(ObservableList<String> value) {
    _$tarefasAtom.reportWrite(value, super.tarefas, () {
      super.tarefas = value;
    });
  }

  final _$TarefaControllerBaseActionController =
      ActionController(name: 'TarefaControllerBase');

  @override
  void adicionaTarefa() {
    final _$actionInfo = _$TarefaControllerBaseActionController.startAction(
        name: 'TarefaControllerBase.adicionaTarefa');
    try {
      return super.adicionaTarefa();
    } finally {
      _$TarefaControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deletarTarefa() {
    final _$actionInfo = _$TarefaControllerBaseActionController.startAction(
        name: 'TarefaControllerBase.deletarTarefa');
    try {
      return super.deletarTarefa();
    } finally {
      _$TarefaControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tarefas: ${tarefas}
    ''';
  }
}
