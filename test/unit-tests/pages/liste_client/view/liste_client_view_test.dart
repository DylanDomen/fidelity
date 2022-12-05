import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mocktail/mocktail.dart';

import 'package:fidelity/pages/liste_client/liste_client.dart';

class MockListeClientCubit extends MockCubit<ListeClientState> implements ListeClientCubit{}

extension PumpListeClient on WidgetTester {
  Future<void> pumpListeClient({required Widget widget,required ListeClientCubit liste_clientCubit,}) {
    return pumpWidget(
        BlocProvider(
            create: (context) => liste_clientCubit,
          child: MaterialApp(
            home: Scaffold(body: widget),
        ),
      ),
    );
  }
}
void main() {
  late ListeClientCubit liste_clientCubit;
  setUp(() {
    liste_clientCubit = MockListeClientCubit();
    when(() => liste_clientCubit.state,).thenReturn(const ListeClientState());
  });
  group('ListeClient Page', () {
        testWidgets('WillPopScope présent', (tester) async {
      await tester.pumpListeClient(
          widget: const ListeClientView(),
          liste_clientCubit: liste_clientCubit,
          );
      await tester.pumpAndSettle();
      expect(find.byType(WillPopScope), findsOneWidget);
    });
        testWidgets('Retour retourne true', (tester) async {
      await tester.pumpListeClient(
          widget: const ListeClientView(),
          liste_clientCubit: liste_clientCubit,
          );
      await tester.pumpAndSettle();
          final dynamic widgetsAppState = tester.state(find.byType(WidgetsApp));
          expect(await widgetsAppState.didPopRoute(), isFalse);
    });
        
  });
}
