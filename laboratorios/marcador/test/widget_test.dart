import 'package:flutter_test/flutter_test.dart';

import 'package:marcador/main.dart';

void main() {
  testWidgets('El marcador inicia en empate', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Marcador Deportivo'), findsOneWidget);
    expect(find.text('Empate'), findsOneWidget);
    expect(find.text('0'), findsNWidgets(2));
  });

  testWidgets('Team Liquid va ganando al sumar un punto', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('+1').first);
    await tester.pump();

    expect(find.text('Va ganando Team Liquid'), findsOneWidget);
  });

  testWidgets('Reiniciar vuelve a empate y a cero', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('+1').first);
    await tester.pump();
    expect(find.text('Va ganando Team Liquid'), findsOneWidget);

    await tester.ensureVisible(find.text('Reiniciar'));
    await tester.pump();
    await tester.tap(find.text('Reiniciar'));
    await tester.pump();

    expect(find.text('Empate'), findsOneWidget);
    expect(find.text('0'), findsNWidgets(2));
  });
}
