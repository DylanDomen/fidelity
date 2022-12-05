
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:fidelity/pages/connexion/connexion.dart';

extension PumpConnexion on WidgetTester {
  Future<void> pumpConnexion({required Widget widget,}) {
    return pumpWidget(
      BlocProvider(
          create: (context) => ConnexionCubit(),
      child: MaterialApp(
        home: widget,
      ),
    ),
    );
  }
}
void main() {
  group('Connexion Page', () {
    test('Est une page', () {
      expect(ConnexionPage.page(), isA<MaterialPage<dynamic>>());
    });

    testWidgets('ConnexionView intégrer à la page', (tester) async {
      await tester.pumpConnexion(widget: const ConnexionPage());
      await tester.pumpAndSettle();
      expect(find.byType(ConnexionView), findsOneWidget);
    });
  });
}
