
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:fidelity/pages/liste_client/liste_client.dart';

extension PumpListeClient on WidgetTester {
  Future<void> pumpListeClient({required Widget widget,}) {
    return pumpWidget(
      BlocProvider(
          create: (context) => ListeClientCubit(),
      child: MaterialApp(
        home: widget,
      ),
    ),
    );
  }
}
void main() {
  group('ListeClient Page', () {
    test('Est une page', () {
      expect(ListeClientPage.page(), isA<MaterialPage<dynamic>>());
    });

    testWidgets('ListeClientView intégrer à la page', (tester) async {
      await tester.pumpListeClient(widget: const ListeClientPage());
      await tester.pumpAndSettle();
      expect(find.byType(ListeClientView), findsOneWidget);
    });
  });
}
