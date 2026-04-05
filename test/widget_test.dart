import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets('La aplicacion carga correctamente', (WidgetTester tester) async {
    await tester.pumpWidget(const MiAplicacionWeb());

    expect(find.text('Dashboard Empresarial'), findsOneWidget);
  });
}
