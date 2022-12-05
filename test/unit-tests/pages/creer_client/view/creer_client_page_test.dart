
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:fidelity/pages/creer_client/creer_client.dart';

extension PumpCreerClient on WidgetTester {
  Future<void> pumpCreerClient({required Widget widget,}) {
    return pumpWidget(
      BlocProvider(
          create: (context) => CreerClientCubit(),
      child: MaterialApp(
        home: widget,
      ),
    ),
    );
  }
}
void main() {
  group('CreerClient Page', () {
    test('Est une page', () {
      expect(CreerClientPage.page(), isA<MaterialPage<dynamic>>());
    });

    testWidgets('CreerClientView intégrer à la page', (tester) async {
      await tester.pumpCreerClient(widget: const CreerClientPage());
      await tester.pumpAndSettle();
      expect(find.byType(CreerClientView), findsOneWidget);
    });
  });
}
