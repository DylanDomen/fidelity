
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:fidelity/pages/infos_client/infos_client.dart';

extension PumpInfosClient on WidgetTester {
  Future<void> pumpInfosClient({required Widget widget,}) {
    return pumpWidget(
      BlocProvider(
          create: (context) => InfosClientCubit(),
      child: MaterialApp(
        home: widget,
      ),
    ),
    );
  }
}
void main() {
  group('InfosClient Page', () {
    test('Est une page', () {
      expect(InfosClientPage.page(), isA<MaterialPage<dynamic>>());
    });

    testWidgets('InfosClientView intégrer à la page', (tester) async {
      await tester.pumpInfosClient(widget: const InfosClientPage());
      await tester.pumpAndSettle();
      expect(find.byType(InfosClientView), findsOneWidget);
    });
  });
}
