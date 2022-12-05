import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';
import 'package:mocktail/mocktail.dart';

import 'package:fidelity/pages/creer_client/creer_client.dart';

class MockCreerClientCubit extends MockCubit<CreerClientState> implements CreerClientCubit{}

extension PumpCreerClient on WidgetTester {
  Future<void> pumpCreerClient({required Widget widget,required CreerClientCubit creer_clientCubit,}) {
    return pumpWidget(
        BlocProvider(
            create: (context) => creer_clientCubit,
          child: MaterialApp(
            home: Scaffold(body: widget),
        ),
      ),
    );
  }
}
void main() {
  late CreerClientCubit creer_clientCubit;
  setUp(() {
    creer_clientCubit = MockCreerClientCubit();
    when(() => creer_clientCubit.state,).thenReturn(const CreerClientState());
  });
  group('CreerClient Page', () {
        testWidgets('WillPopScope présent', (tester) async {
      await tester.pumpCreerClient(
          widget: const CreerClientView(),
          creer_clientCubit: creer_clientCubit,
          );
      await tester.pumpAndSettle();
      expect(find.byType(WillPopScope), findsOneWidget);
    });
        testWidgets('Retour retourne true', (tester) async {
      await tester.pumpCreerClient(
          widget: const CreerClientView(),
          creer_clientCubit: creer_clientCubit,
          );
      await tester.pumpAndSettle();
          final dynamic widgetsAppState = tester.state(find.byType(WidgetsApp));
          expect(await widgetsAppState.didPopRoute(), isFalse);
    });
        
        testWidgets('Submit', (tester) async {
          whenListen(
            creer_clientCubit,
            Stream.value(const CreerClientState(status: FormzStatus.valid)),
          );
          await tester.pumpCreerClient(widget: const CreerClientView(),creer_clientCubit: creer_clientCubit,);
          await tester.pumpAndSettle();
          await tester.tap(find.byKey(const Key('BoutonSubmit')));
          await tester.pumpAndSettle();
          verify(() => creer_clientCubit.submit(),).called(1);
        });
        
  });
}
