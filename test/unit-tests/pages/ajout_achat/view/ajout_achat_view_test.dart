import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';
import 'package:mocktail/mocktail.dart';

import 'package:fidelity/pages/ajout_achat/ajout_achat.dart';

class MockAjoutAchatCubit extends MockCubit<AjoutAchatState> implements AjoutAchatCubit{}

extension PumpAjoutAchat on WidgetTester {
  Future<void> pumpAjoutAchat({required Widget widget,required AjoutAchatCubit ajout_achatCubit,}) {
    return pumpWidget(
        BlocProvider(
            create: (context) => ajout_achatCubit,
          child: MaterialApp(
            home: Scaffold(body: widget),
        ),
      ),
    );
  }
}
void main() {
  late AjoutAchatCubit ajout_achatCubit;
  setUp(() {
    ajout_achatCubit = MockAjoutAchatCubit();
    when(() => ajout_achatCubit.state,).thenReturn(const AjoutAchatState());
  });
  group('AjoutAchat Page', () {
        testWidgets('WillPopScope présent', (tester) async {
      await tester.pumpAjoutAchat(
          widget: const AjoutAchatView(),
          ajout_achatCubit: ajout_achatCubit,
          );
      await tester.pumpAndSettle();
      expect(find.byType(WillPopScope), findsOneWidget);
    });
        testWidgets('Retour retourne true', (tester) async {
      await tester.pumpAjoutAchat(
          widget: const AjoutAchatView(),
          ajout_achatCubit: ajout_achatCubit,
          );
      await tester.pumpAndSettle();
          final dynamic widgetsAppState = tester.state(find.byType(WidgetsApp));
          expect(await widgetsAppState.didPopRoute(), isFalse);
    });
        
        testWidgets('Submit', (tester) async {
          whenListen(
            ajout_achatCubit,
            Stream.value(const AjoutAchatState(status: FormzStatus.valid)),
          );
          await tester.pumpAjoutAchat(widget: const AjoutAchatView(),ajout_achatCubit: ajout_achatCubit,);
          await tester.pumpAndSettle();
          await tester.tap(find.byKey(const Key('BoutonSubmit')));
          await tester.pumpAndSettle();
          verify(() => ajout_achatCubit.submit(),).called(1);
        });
        
  });
}
