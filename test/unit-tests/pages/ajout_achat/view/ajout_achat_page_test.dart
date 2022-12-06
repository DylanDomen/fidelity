import 'package:fidelity/pages/ajout_achat/ajout_achat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

extension PumpAjoutAchat on WidgetTester {
  Future<void> pumpAjoutAchat({
    required Widget widget,
  }) {
    return pumpWidget(
      BlocProvider(
        create: (context) => AjoutAchatCubit(),
        child: MaterialApp(
          home: widget,
        ),
      ),
    );
  }
}

void main() {
  group('AjoutAchat Page', () {
    test('Est une page', () {
      expect(AjoutAchatPage.page(), isA<MaterialPage<dynamic>>());
    });

    testWidgets('AjoutAchatView intégrer à la page', (tester) async {
      tester.binding.window.physicalSizeTestValue = const Size(3840, 2400);
      await tester.pumpAjoutAchat(widget: const AjoutAchatPage());
      await tester.pumpAndSettle();
      expect(find.byType(AjoutAchatView), findsOneWidget);
    });
  });
}
