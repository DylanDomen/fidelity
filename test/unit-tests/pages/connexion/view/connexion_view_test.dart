import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';
import 'package:mocktail/mocktail.dart';

import 'package:fidelity/pages/connexion/connexion.dart';

class MockConnexionCubit extends MockCubit<ConnexionState> implements ConnexionCubit{}

extension PumpConnexion on WidgetTester {
  Future<void> pumpConnexion({required Widget widget,required ConnexionCubit connexionCubit,}) {
    return pumpWidget(
        BlocProvider(
            create: (context) => connexionCubit,
          child: MaterialApp(
            home: Scaffold(body: widget),
        ),
      ),
    );
  }
}
void main() {
  late ConnexionCubit connexionCubit;
  setUp(() {
    connexionCubit = MockConnexionCubit();
    when(() => connexionCubit.state,).thenReturn(const ConnexionState());
  });
  group('Connexion Page', () {
        testWidgets('WillPopScope présent', (tester) async {
      await tester.pumpConnexion(
          widget: const ConnexionView(),
          connexionCubit: connexionCubit,
          );
      await tester.pumpAndSettle();
      expect(find.byType(WillPopScope), findsOneWidget);
    });
        testWidgets('Retour retourne true', (tester) async {
      await tester.pumpConnexion(
          widget: const ConnexionView(),
          connexionCubit: connexionCubit,
          );
      await tester.pumpAndSettle();
          final dynamic widgetsAppState = tester.state(find.byType(WidgetsApp));
          expect(await widgetsAppState.didPopRoute(), isFalse);
    });
        
        testWidgets('Submit', (tester) async {
          whenListen(
            connexionCubit,
            Stream.value(const ConnexionState(status: FormzStatus.valid)),
          );
          await tester.pumpConnexion(widget: const ConnexionView(),connexionCubit: connexionCubit,);
          await tester.pumpAndSettle();
          await tester.tap(find.byKey(const Key('BoutonSubmit')));
          await tester.pumpAndSettle();
          verify(() => connexionCubit.submit(),).called(1);
        });
        
  });
}
