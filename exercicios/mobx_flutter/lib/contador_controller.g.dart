// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contador_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ContadorController on ContadorControllerBase, Store {
  final _$valorAtom = Atom(name: 'ContadorControllerBase.valor');

  @override
  int get valor {
    _$valorAtom.reportRead();
    return super.valor;
  }

  @override
  set valor(int value) {
    _$valorAtom.reportWrite(value, super.valor, () {
      super.valor = value;
    });
  }

  final _$ContadorControllerBaseActionController =
      ActionController(name: 'ContadorControllerBase');

  @override
  void incrementa() {
    final _$actionInfo = _$ContadorControllerBaseActionController.startAction(
        name: 'ContadorControllerBase.incrementa');
    try {
      return super.incrementa();
    } finally {
      _$ContadorControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
valor: ${valor}
    ''';
  }
}
