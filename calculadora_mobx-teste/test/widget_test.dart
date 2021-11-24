import 'package:calculadora_mobx/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Verificar se as teclas numericas foram criadas duas vezes',  (WidgetTester tester) async {

    await tester.pumpWidget(Calculadora());

    expect(find.text('0'), findsNWidgets(2));
    expect(find.text('1'), findsNWidgets(2));
    expect(find.text('2'), findsNWidgets(2));
    expect(find.text('3'), findsNWidgets(2));
    expect(find.text('4'), findsNWidgets(2));
    expect(find.text('5'), findsNWidgets(2));
    expect(find.text('6'), findsNWidgets(2));
    expect(find.text('7'), findsNWidgets(2));
    expect(find.text('8'), findsNWidgets(2));
    expect(find.text('9'), findsNWidgets(2));
  });

  testWidgets('Verificar se as teclas de operações foram criadas',  (WidgetTester tester) async {

    await tester.pumpWidget(Calculadora());

    expect(find.text('+'), findsOneWidget);
    expect(find.text('-'), findsOneWidget);
    expect(find.text('*'), findsOneWidget);
    expect(find.text('/'), findsOneWidget);
    expect(find.text('%'), findsOneWidget);
  });

  testWidgets('Verificar se os botões calcular e zerar foram criados',  (WidgetTester tester) async {

    await tester.pumpWidget(Calculadora());

    expect(find.text('Zerar'), findsOneWidget);
    expect(find.text('Calcular'), findsOneWidget);
  });

  testWidgets('Verificar se 2 + 2 = 4.00',  (WidgetTester tester) async {

    await tester.pumpWidget(Calculadora());

    await tester.tap(find.text('2').first);
    await tester.pump();
    await tester.tap(find.text('+'));
    await tester.pump();
    await tester.tap(find.text('2').last);
    await tester.pump();

    await tester.tap(find.text('Calcular'));
    await tester.pump();

    expect(find.text('4.00'), findsOneWidget);
  });

  testWidgets('Verificar erro na divisão por 0',  (WidgetTester tester) async {

    await tester.pumpWidget(Calculadora());

    await tester.tap(find.text('1').first);
    await tester.pump();
    await tester.tap(find.text('/'));
    await tester.pump();
    await tester.tap(find.text('0').last);
    await tester.pump();

    await tester.tap(find.text('Calcular'));
    await tester.pump();

    expect(find.text('Infinity'), findsOneWidget);
  });
}